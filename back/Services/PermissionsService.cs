using AutoMapper;
using back.DTOs;
using back.Entities;
using back.Interfaces;
using back.Persistence;
using back.Utilities.Base;
using FluentValidation;
using Microsoft.EntityFrameworkCore;

namespace back.Services
{
    public class PermissionsService : IPermissionsService
    {
        private readonly AppDbContext _appDbContext;
        private readonly IValidator<PermissionRequestDTO> _permissionDtoValidator;
        private readonly IMapper _mapper;

        public PermissionsService(
            AppDbContext appDbContext,
            IValidator<PermissionRequestDTO> permissionDtoValidator,
            IMapper mapper
        )
        {
            _appDbContext = appDbContext;
            _permissionDtoValidator = permissionDtoValidator;
            _mapper = mapper;
        }

        public async Task<BaseResponse<List<PermissionDTO>>> GetAll(int pageSize, int pageNumber)
        {
            var permissions = await _appDbContext.Permissions
                .OrderBy(x => x.Date)
                .Where(x => !x.IsDeleted)
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                .Include(p => p.Status)
                .Where(p => !p.Status.IsDeleted)
                .Include(p => p.Type)
                .Where(p => !p.Type.IsDeleted)
                .ToListAsync();

            var permissionsDTO = _mapper.Map<List<PermissionDTO>>(permissions.ToList());

            return new BaseResponse<List<PermissionDTO>>(permissionsDTO) { };
        }

        public async Task<BaseResponse<PermissionDTO>> GetById(string id)
        {
            var permission = await _appDbContext.Permissions
                .Where(x => x.Id == id && !x.IsDeleted)
                .Include(p => p.Status)
                .Where(p => !p.Status.IsDeleted)
                .Include(p => p.Type)
                .Where(p => !p.Type.IsDeleted)
                .FirstOrDefaultAsync();

            if (permission is null)
            {
                return new BaseResponse<PermissionDTO>($"There are not records with id: {id}") { };
            }

            var dto = _mapper.Map<PermissionDTO>(permission);
            return new BaseResponse<PermissionDTO>(dto) { };
        }

        public async Task<BaseResponse<string>> Create(PermissionRequestDTO dto)
        {
            var validator = await _permissionDtoValidator.ValidateAsync(dto);

            if (!validator.IsValid)
                return new BaseResponse<string>("One or more validation errors were made")
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };

            Permission newPermission = _mapper.Map<Permission>(dto);

            _appDbContext.Add(newPermission);
            await _appDbContext.SaveChangesAsync();

            return new BaseResponse<string>($"The permission has been created succesfully!");
        }

        public async Task<BaseResponse<string>> Update(string id, PermissionRequestDTO dto)
        {
            var validator = await _permissionDtoValidator.ValidateAsync(dto);

            if (!validator.IsValid)
                return new BaseResponse<string>("One or more validation errors were made")
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };

            if (string.IsNullOrEmpty(id))
                return new BaseResponse<string>($"The id is required") { };

            var permission = await _appDbContext.Permissions.Where(x => !x.IsDeleted).FirstOrDefaultAsync();

            if (permission is null)
                return new BaseResponse<string>($"There are not records with id: {id}") { };

            permission.DaysAmount = dto.DaysAmount;
            permission.Date = dto.Date;
            permission.StatusId = dto.StatusId;
            permission.ProfileId = dto.ProfileId;
            permission.TypeId = dto.TypeId;

            _appDbContext.Update(permission);
            await _appDbContext.SaveChangesAsync();

            return new BaseResponse<string>($"The permission has been updated succesfully!");
        }

        public async Task<BaseResponse<string>> Delete(string id)
        {
            var permission = await _appDbContext.Permissions.Where(x => x.Id == id && !x.IsDeleted).FirstOrDefaultAsync();

            if (permission is null)
                return new BaseResponse<string>($"There are not records with id: {id}") { };

            permission.IsDeleted = true;

            _appDbContext.Update(permission);
            await _appDbContext.SaveChangesAsync();

            return new BaseResponse<string>($"The Permission has been deleted succesfully!");
        }
    }
}
