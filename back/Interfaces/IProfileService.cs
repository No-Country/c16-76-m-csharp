

using back.DTOs;
using back.Entities;
using back.Utilities.Base;

namespace back.Interfaces
{
    public interface IProfileService
    {
       public Task<BaseResponse<string>> AddProfile(ProfileRequestDTO profile);

       public Task<BaseResponse<List<ProfileDto>>> GetProfiles(int pageSize, int pageNumber);

       public Task<BaseResponse<ProfileDto>> GetProfileById(string id);

       public Task<BaseResponse<string>> UpdateProfile(string id, ProfileRequestDTO profile);

       public Task<BaseResponse<string>> DeleteProfile(string id);


    
    }
}
