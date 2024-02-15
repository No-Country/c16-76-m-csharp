using back.DTOs;
using back.Entities.User;

namespace back.Interfaces;

public interface IUserService
{
    public Task<bool> Create(UserDto userDto);
    public Task<IEnumerable<AppUser>> GetAll(int limit);
    public Task<AppUser> GetById(string id);
    public Task<bool> Update(string id, UserDto userDto);
    public Task<bool> Delete(string id);
}
