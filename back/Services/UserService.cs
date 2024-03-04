using AutoMapper;
using back.DTOs;
using back.Entities;
using back.Entities.User;
using back.Enums;
using back.Interfaces;
using back.Persistence;
using back.Persistence.Seeds;
using back.Utilities.Base;
using FluentValidation;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace back.Services;

class UserService : IUserService
{
    private readonly AppDbContext _appDbContext;
    private readonly IValidator<UserRequestDTO> _userRequestDTO;
    private readonly UserManager<AppUser> _userManager;
    private readonly IMapper _mapper;

    public UserService(
        AppDbContext appDbContext, 
        IValidator<UserRequestDTO> userRequestDTO,
        UserManager<AppUser> userManager,
        IMapper mapper)
    {
        _appDbContext = appDbContext;
        _userRequestDTO = userRequestDTO;
        _userManager = userManager;
        _mapper = mapper;
    }

    // Get All User
    public async Task<BaseResponse<List<UserDto>>> GetAll(int pageSize, int pageNumber)
    {
        var users = await _appDbContext.AppUsers
            .OrderBy(x => x.UserName)
            .Where(x => x.IsDeleted == false)
            .Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            //.Include(p => p.Profile)
            //.Where(p => !p.Profile.IsDeleted)
            .ToListAsync();

        var usersDTO = _mapper.Map<List<UserDto>>(users);

        return new BaseResponse<List<UserDto>>(usersDTO) { };
    }

    // Get user by Id
    public async Task<BaseResponse<UserDto>> GetById(string id)
    {
        var user = await _appDbContext.AppUsers
            .Where(x => x.IsDeleted == false)
            .Include(p => p.Profile)
                .ThenInclude(p => p.BenefitsSummary)
            .Where(p => !p.Profile.IsDeleted)
            .FirstOrDefaultAsync(u => u.Id == id);

        var dto = _mapper.Map<UserDto>(user);

        var response = new BaseResponse<UserDto>();

        if (user == null)
        {
            return new BaseResponse<UserDto>($"There are not records with id: {id}") { };
        }

        return new BaseResponse<UserDto>(dto) { };
    }

    // Create User
    public async Task<BaseResponse<string>> Create(UserRequestDTO dto)
    {
        var validator = await _userRequestDTO.ValidateAsync(dto);

        if (!validator.IsValid)
        {
            return new BaseResponse<string>("One or more validation errors were made") {
                Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
            };
        }

        var userWithTheSameName = await _userManager.FindByNameAsync(dto.UserName);
        if (userWithTheSameName != null)
        {
            return new BaseResponse<string>($"User: {dto.UserName} already exists") { };
        }

        var user = _mapper.Map<AppUser>(dto);
        user.Profile = EntityRelationMethods.SeedProfile();

        var userWithTheSameEmail = await _userManager.FindByEmailAsync(dto.Email);
        if (userWithTheSameEmail != null)
        {
            return new BaseResponse<string>($"User's email: {dto.Email} already exists") { };
        }

        var result = await _userManager.CreateAsync(user, dto.Password);
        if (result.Succeeded)
        {
            await _userManager.AddToRoleAsync(user, Roles.Employee.ToString());

            return new BaseResponse<string>(user.Id, $"The employee {user.UserName} has been created succesfully!");
        }
        else
        {
            return new BaseResponse<string>("Something went wrong, the user could not be created")
            {
                Errors = result.Errors.Select(x => x.Description).ToList()
            };
        }
    }

    // Update User
    public async Task<BaseResponse<string>> Update(string email, UserRequestDTO dto)
    {
        var validator = await _userRequestDTO.ValidateAsync(dto);

        if (!validator.IsValid)
        {
            return new BaseResponse<string>("One or more validation errors were made")
            {
                Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
            };
        }

        // This validation works to check if the User Name we are trying to change is alredy used for another user
        var userWithTheSameName = await _userManager.FindByNameAsync(dto.UserName);
        if (userWithTheSameName != null)
        {
            return new BaseResponse<string>($"User: {dto.UserName} already exists") { };
        }

        // This validation works to check if the email we are trying to chage is alredy used for another user
        var userWithTheSameEmail = await _userManager.FindByEmailAsync(dto.Email);
        if (userWithTheSameEmail != null)
        {
            return new BaseResponse<string>($"User's email: {dto.Email} already exists") { };
        }

        // This validation works to check if this user does not exists
        var user = await _userManager.FindByEmailAsync(email);
        if (user == null)
        {
            return new BaseResponse<string>($"There are not records with email: {email}") { };
        }

        user.FirstName = dto.FirstName;
        user.LastName = dto.LastName;
        user.UserName = dto.UserName;
        user.Email = dto.Email;
        user.PhoneNumber = dto.PhoneNumber;

        var result = await _userManager.UpdateAsync(user);
        if (result.Succeeded)
        {
            return new BaseResponse<string>(user.Id, $"The employee {user.UserName} has been updated succesfully!");
        }
        else
        {
            return new BaseResponse<string>("Something went wrong, the user could not be updated")
            {
                Errors = result.Errors.Select(x => x.Description).ToList()
            };
        }
    }

    // Delete User
    public async Task<BaseResponse<string>> Delete(string email)
    {
        var user = await _userManager.FindByEmailAsync(email);
        if (user == null)
        {
            return new BaseResponse<string>($"There are not records with email: {email}") { };
        }

        user.IsDeleted = true;

        var result = await _userManager.UpdateAsync(user);
        if (result.Succeeded)
        {
            return new BaseResponse<string>(user.Id, $"The employee {user.UserName} has been deleted succesfully!");
        }
        else
        {
            return new BaseResponse<string>("Something went wrong, the user could not be deleted")
            {
                Errors = result.Errors.Select(x => x.Description).ToList()
            };
        }
    }

    public async Task<BaseResponse<int>> GetRecordsAmount()
    {
        var count = await _appDbContext.AppUsers
            .Where(x => x.IsDeleted == false)
            .CountAsync();

        return new BaseResponse<int>(count) { };
    }
}
