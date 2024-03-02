using AutoMapper;
using back.DTOs;
using back.Entities;
using back.Enums;
using back.Interfaces;
using back.Persistence;
using back.Utilities.Base;
using FluentValidation;
using Microsoft.EntityFrameworkCore;

namespace back.Services;

class ActivityStatusService : IActivityStatusService
{
    private readonly AppDbContext _appDbContext;
    private readonly IValidator<AssignmentDto> _assignamentDtoValidator;
    private readonly IMapper _mapper;

    public ActivityStatusService(
        AppDbContext appDbContext,
        IValidator<AssignmentDto> assignamentDtoValidator,
        IMapper mapper
    )
    {
        _appDbContext = appDbContext;
        _assignamentDtoValidator = assignamentDtoValidator;
        _mapper = mapper;
    }

    // public async Task<BaseResponse<List<AssignmentDto>>> GetAll(int pageSize, int pageNumber, Status? status)
    public async Task<BaseResponse<List<AssignmentDto>>> GetAll(int pageSize, int pageNumber)
    {
        List<Assignment>? filterByStatus = null;
        // var filterStatus = status is null;
        

        var users = await _appDbContext.Assignments
            .OrderBy(x => x.StartDate)
            .Where(x => x.IsDeleted == false)
            .Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            // .Include(p=>p.Profile)
            .ToListAsync();

        // If status exist, filter by the current status
        //if (!filterStatus)
        //    filterByStatus = users.Where(x => x.Status == status).ToList();

        var mapper = filterByStatus is null ? users : filterByStatus;
        var assignmentDtos = _mapper.Map<List<AssignmentDto>>(mapper);

        return new BaseResponse<List<AssignmentDto>>(assignmentDtos) { };
    }

    public async Task<BaseResponse<AssignmentDto>> GetById(string id)
    {
        var assignament = await _appDbContext.Assignments.FindAsync(id);
        var dto = _mapper.Map<AssignmentDto>(assignament);

        if (assignament is null)
        {
            return new BaseResponse<AssignmentDto>($"There are not records with id: {id}") { };
        }

        return new BaseResponse<AssignmentDto>(dto) { };
    }

    public async Task<BaseResponse<Assignment>> GetByName(string name)
    {

        if (string.IsNullOrEmpty(name))
            return new BaseResponse<Assignment>($"The name is required") { };

        var assignament = await _appDbContext.Assignments.Where(x => x.Name == name).FirstAsync();

        if (assignament is null)
        {
            return new BaseResponse<Assignment>($"There are not records with name: {name}") { };
        }

        return new BaseResponse<Assignment>(assignament) { };
    }


    public async Task<BaseResponse<string>> Create(AssignmentDto dto)
    {
        var validator = await _assignamentDtoValidator.ValidateAsync(dto);

        if (!validator.IsValid)
        {
            return new BaseResponse<string>("One or more validation errors were made")
            {
                Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
            };
        }

        var currentProfile = await _appDbContext.Profiles.Where(x => x.AppUser.Email == dto.ProfileEmail).FirstAsync();

        if (currentProfile is null)
        {
            return new BaseResponse<string>($"There are not records with email: {dto.ProfileEmail}") { };
        }

        // If a profile has a activity with the same name, return => Activity: {dto.Name} already exists
        // var activityWithTheSameName = await _appDbContext.Assignments.Where(x => x.Name == dto.Name && x.Profile.Id == currentProfile.Id).FirstAsync();
        // if (activityWithTheSameName is not null)
        // {
        //     return new BaseResponse<string>($"Activity: {dto.Name} already exists") { };
        // }

        var assignamentMap = _mapper.Map<Assignment>(dto);

        _appDbContext.Assignments.Add(assignamentMap);
        await _appDbContext.SaveChangesAsync();

        return new BaseResponse<string>($"The activity '{assignamentMap.Name}' has been created succesfully!");
    }

    public async Task<BaseResponse<string>> Update(string id, AssignmentDto dto)
    {
        var validator = await _assignamentDtoValidator.ValidateAsync(dto);

        if (!validator.IsValid)
            return new BaseResponse<string>("One or more validation errors were made")
            {
                Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
            };

        var currentProfile = await _appDbContext.Profiles.Where(x => x.AppUser.Email == dto.ProfileEmail).FirstAsync();

        if (currentProfile is null)
            return new BaseResponse<string>($"There are not records with email: {dto.ProfileEmail}") { };

        if (string.IsNullOrEmpty(id))
            return new BaseResponse<string>($"The id is required") { };

        // var currentAssignament = GetById(id).Result;
        var currentAssignament = await _appDbContext.Assignments.FindAsync(id);

        if (currentAssignament is null)
            return new BaseResponse<string>($"There are not records with id: {id}") { };

        // If a profile has a activity with the same name, return => Activity: {dto.Name} already exists
        // var activityWithTheSameName = await _appDbContext.Assignments.Where(x => x.Name == dto.Name && x.Profile.Id == currentProfile.Id).FirstAsync();
        // if (activityWithTheSameName is not null)
        // {
        //     return new BaseResponse<string>($"Activity: {dto.Name} already exists") { };
        // }

        // currentAssignament.Data.ProfileEmail = dto.ProfileEmail;
        currentAssignament.Name = dto.Name;
        currentAssignament.Description = dto.Description;
        // currentAssignament.StartDate = dto.StartDate;
        currentAssignament.EndDate = dto.EndDate;
        // currentAssignament.Status = dto.Status;

        _appDbContext.Update(currentAssignament);
        await _appDbContext.SaveChangesAsync();

        return new BaseResponse<string>($"The activity {currentAssignament.Name} has been updated succesfully!");
    }

    public async Task<BaseResponse<string>> Delete(string id)
    {
        var assignment = await _appDbContext.Assignments.FindAsync(id); ;

        if (assignment is null)
            return new BaseResponse<string>($"There are not records with name: {id}") { };

        assignment.IsDeleted = true;

        _appDbContext.Update(assignment);
        await _appDbContext.SaveChangesAsync();

        return new BaseResponse<string>($"The activity '{id}' has been deleted succesfully!");
    }
    
    public async Task<BaseResponse<string>> DeleteByName(string name)
    {
        var assignment = GetByName(name).Result;

        if (assignment is null)
            return new BaseResponse<string>($"There are not records with name: {name}") { };

        assignment.Data.IsDeleted = true;

        _appDbContext.Update(assignment);
        await _appDbContext.SaveChangesAsync();

        return new BaseResponse<string>($"The activity '{name}' has been deleted succesfully!");
    }
}
