

using back.Entities;

namespace back.Interfaces
{
    public interface IProfileService
    {
       public Task AddProfile(UserProfile profile);
    }
}
