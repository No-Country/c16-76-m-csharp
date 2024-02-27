using back.DTOs;
using back.Entities.User;
using back.Utilities.Base;

namespace back.Interfaces;

public interface IUserService
{
    public Task<BaseResponse<string>> Create(UserRequestDTO dto);
    public Task<BaseResponse<List<UserDto>>> GetAll(int pageSize, int pageNumber);
    public Task<BaseResponse<UserDto>> GetById(string id);
    public Task<BaseResponse<string>> Update(string email, UserRequestDTO dto);
    public Task<BaseResponse<string>> Delete(string email);
    public Task<BaseResponse<int>> GetRecordsAmount();
}
