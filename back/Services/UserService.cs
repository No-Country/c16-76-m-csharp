using back.DTOs;
using back.Entities.User;
using back.Interfaces;
using back.Persistence;
using back.Utilities.Base;
using FluentValidation;
using Microsoft.EntityFrameworkCore;

namespace back.Services;

class UserService : IUserService
{
    private readonly AppDbContext _appDbContext;
    private readonly IValidator<UserDto> _userDtoValidator;

    public UserService(AppDbContext appDbContext, IValidator<UserDto> userValidator)
    {
        _appDbContext = appDbContext;
        _userDtoValidator = userValidator;
    }

    public async Task<BaseResponse<bool>> Create(UserDto userDto)
    {
        var validator = await _userDtoValidator.ValidateAsync(userDto);
        var response = new BaseResponse<bool>();

        if (!validator.IsValid)
        {
            response.Errors = validator.Errors;
            response.StatusCode = 404;
            response.IsSuccess = false;
            return response;
        }

        AppUser user = new()
        {
            FirstName = userDto.FirstName,
            LastName = userDto.LastName,
            PasswordHash = userDto.PasswordHash,
            Email = userDto.Email,
            PhoneNumber = userDto.PhoneNumber,
        };

        _appDbContext.Add(user);
        await _appDbContext.SaveChangesAsync();

        response.IsSuccess = true;
        response.StatusCode = 201;
        response.Message = "The employee has been created succesfully!";

        return response;
    }

    public async Task<BaseResponse<AppUser>> GetAll(int limit)
    {
        var users = await _appDbContext.Users
            .Take(limit)
            // .Include(p=>p.Profile)
            // .Where(p => !p.Profile.IsDeleted)
            .ToListAsync();

        return new BaseResponse<AppUser>()
        {
            IsSuccess = true,
            StatusCode = 200,
            Items = users,
            TotalRecords = users.Count
        };
    }

    public async Task<BaseResponse<AppUser>> GetById(string id)
    {
        var user = await _appDbContext.Users.FindAsync(id);
        var response = new BaseResponse<AppUser>();

        if (user is null)
        {
            response.IsSuccess = false;
            response.StatusCode = 404;
            response.Message = $"Employee with id {id} not found";
            response.Data = user;
            return response;
        }

        response.IsSuccess = true;
        response.StatusCode = 200;
        response.Data = user;

        return response;
    }

    public async Task<BaseResponse<bool>> Update(string id, UserDto userDto)
    {
        var user = GetById(id).Result;
        var validator = await _userDtoValidator.ValidateAsync(userDto);
        var response = new BaseResponse<bool>();


        if (user.Data is null)
        {
            response.StatusCode = user.StatusCode;
            response.IsSuccess = user.IsSuccess;
            response.Message = user.Message;
            response.Data = false;

            return response;
        }

        if (!validator.IsValid)
        {
            response.StatusCode = 400;
            response.IsSuccess = false;
            response.Errors = validator.Errors;
            response.Data = true;

            return response;
        }

        user.Data.UserName = userDto.UserName;
        user.Data.FirstName = userDto.FirstName;
        user.Data.LastName = userDto.LastName;
        user.Data.Email = userDto.Email;
        user.Data.PhoneNumber = userDto.PhoneNumber;

        _appDbContext.Update(user.Data);
        await _appDbContext.SaveChangesAsync();

        response.StatusCode = 200;
        response.IsSuccess = true;
        response.Data = true;
        response.Message = $"The employee {user?.Data?.FirstName} has been updated successfully";

        return response;
    }

    public async Task<BaseResponse<bool>> Delete(string id)
    {
        var user = GetById(id).Result;
        var response = new BaseResponse<bool>();

        if (user.Data is null)
        {
            response.StatusCode = user.StatusCode;
            response.IsSuccess = user.IsSuccess;
            response.Message = user.Message;
            response.Data = false;

            return response;
        }

        // Soft delete
        // user?.Profile?.IsDeleted = true;

        await _appDbContext.SaveChangesAsync();

        response.IsSuccess = true;
        response.StatusCode = 200;
        response.Data = true;
        response.Message = $"The employee with id {user?.Data?.Id} has been removed successfully";

        return response;
    }
}
