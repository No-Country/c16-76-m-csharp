using back.DTOs;
using back.Entities;
using back.Utilities.Base;

namespace back.Interfaces
{
    public interface IPermissionsService
    {
        public Task<BaseResponse<List<PermissionDTO>>> GetAll(int pageSize, int pageNumber);
        public Task<BaseResponse<PermissionDTO>> GetById(string id);
        public Task<BaseResponse<string>> Create(PermissionRequestDTO dto);
        public Task<BaseResponse<string>> Update(string id, PermissionRequestDTO dto);
        public Task<BaseResponse<string>> Delete(string id);
    }
}
