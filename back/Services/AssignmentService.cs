using AutoMapper;
using back.DTOs;
using back.Entities;
using back.Interfaces;
using back.Persistence;
using back.Utilities.Base;
using FluentValidation;
using Microsoft.EntityFrameworkCore;

namespace back.Services;

class AssignmentService : IAssignmentService
{
    private readonly AppDbContext _appDbContext;
    private readonly IValidator<AssignmentRequestDTO> _assignamentDtoValidator;
    private readonly IMapper _mapper;

    public AssignmentService(
        AppDbContext appDbContext,
        IValidator<AssignmentRequestDTO> assignamentDtoValidator,
        IMapper mapper
    )
    {
        _appDbContext = appDbContext;
        _assignamentDtoValidator = assignamentDtoValidator;
        _mapper = mapper;
    }

    public async Task<BaseResponse<List<AssignmentDto>>> GetAll(int pageSize, int pageNumber)
    {
        var assignments = await _appDbContext.Assignments
                .OrderBy(x => x.StartDate)
                .Where(x => !x.IsDeleted)
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                .Include(p => p.Status)
                .Where(p => !p.Status.IsDeleted)
                .ToListAsync();

        var assignmentDTO = _mapper.Map<List<AssignmentDto>>(assignments.ToList());

        return new BaseResponse<List<AssignmentDto>>(assignmentDTO) { };
    }

    public async Task<BaseResponse<AssignmentDto>> GetById(string id)
    {
        var assignament = await _appDbContext.Assignments
                .Where(x => x.Id == id && !x.IsDeleted)
                .Include(p => p.Status)
                .Where(p => !p.Status.IsDeleted)
                .FirstOrDefaultAsync();

        if (assignament is null)
        {
            return new BaseResponse<AssignmentDto>($"There are not records with id: {id}") { };
        }

        var dto = _mapper.Map<AssignmentDto>(assignament);
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

    public async Task<BaseResponse<string>> Create(AssignmentRequestDTO dto)
    {
        var validator = await _assignamentDtoValidator.ValidateAsync(dto);

        if (!validator.IsValid)
        {
            return new BaseResponse<string>("One or more validation errors were made")
            {
                Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
            };
        }

        Assignment assignamentMap = _mapper.Map<Assignment>(dto);

        _appDbContext.Add(assignamentMap);
        await _appDbContext.SaveChangesAsync();

        return new BaseResponse<string>($"The activity '{assignamentMap.Name}' has been created succesfully!");
    }

    public async Task<BaseResponse<string>> Update(string id, AssignmentRequestDTO dto)
    {
        var validator = await _assignamentDtoValidator.ValidateAsync(dto);

        if (!validator.IsValid)
            return new BaseResponse<string>("One or more validation errors were made")
            {
                Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
            };

        if (string.IsNullOrEmpty(id))
            return new BaseResponse<string>($"The id is required") { };

        var currentAssignament = await _appDbContext.Assignments.Where(x => !x.IsDeleted).FirstOrDefaultAsync();

        if (currentAssignament is null)
            return new BaseResponse<string>($"There are not records with id: {id}") { };

        currentAssignament.Name = dto.Name;
        currentAssignament.Description = dto.Description;
        currentAssignament.StartDate = dto.StartDate;
        currentAssignament.EndDate = dto.EndDate;
        currentAssignament.StatusId = dto.StatusId;
        currentAssignament.ProfileId = dto.ProfileId;

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
