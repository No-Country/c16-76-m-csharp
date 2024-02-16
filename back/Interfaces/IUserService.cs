using back.DTOs;
using back.Entities.User;
using back.Utilities.Base;

namespace back.Interfaces;

public interface IUserService
{
    public Task<BaseResponse<bool>> Create(UserDto userDto);
    // public Task<BaseResponse<AppUser>> GetAll(int limit);
    public Task<BaseResponse<AppUser>> GetAll(int limit);
    public Task<BaseResponse<AppUser>> GetById(string id);
    public Task<BaseResponse<bool>> Update(string id, UserDto userDto);
    public Task<BaseResponse<bool>> Delete(string id);
}
