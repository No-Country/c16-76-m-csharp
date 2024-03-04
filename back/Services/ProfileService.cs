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
    public class ProfileService : IProfileService
    {
        private readonly AppDbContext _appDbContext;
        private readonly IValidator<ProfileRequestDTO> _profileRequestDTO;
        private readonly IMapper _mapper;

        public ProfileService(
            AppDbContext appDbContext,
            IValidator<ProfileRequestDTO> profileRequestDTO,
            IMapper mapper)
        {
            _appDbContext = appDbContext;
            _profileRequestDTO = profileRequestDTO;
            _mapper = mapper;
        }

        //Get All
        public async Task<BaseResponse<List<ProfileDto>>> GetProfiles(int pageSize, int pageNumber)
        {
         var profiles= await _appDbContext.Profiles
                .OrderBy(p => p.AppUser.LastName)
                .Where(p => p.IsDeleted == false)
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                //.Include(x => x.AppUser)
                //.Where(x => !x.AppUser.IsDeleted)
                .ToListAsync();

        var profilesDto = _mapper.Map<List<ProfileDto>>(profiles);

         return new BaseResponse<List<ProfileDto>>(profilesDto) { };
        }

        //Get Profile by Id
        public async Task<BaseResponse<ProfileDto>> GetProfileById(string id)
        {
            var profile = await _appDbContext.Profiles
                .Where(x => x.IsDeleted == false)
                .Include(x => x.AppUser)
                //.Include(x => x.BenefitsSummary)
                .FirstOrDefaultAsync(x => x.Id == id);

            var profiledto = _mapper.Map<ProfileDto>(profile);

            var response = new BaseResponse<ProfileDto>();

            if (profile== null || profile.IsDeleted == true)
            {
                return new BaseResponse<ProfileDto>($"There are not records with id: {id}") { };
            }

            return new BaseResponse<ProfileDto>(profiledto) { };
        }

        //Post profile

        public async Task<BaseResponse<string>> AddProfile(ProfileRequestDTO profileDto)
        {
            var validator = await _profileRequestDTO.ValidateAsync(profileDto);

            if (!validator.IsValid)
            {
                return new BaseResponse<string>("One or more validation errors were made")
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };
            }

            var profile = _mapper.Map<UserProfile>(profileDto);

            var result = await _appDbContext.Profiles.AddAsync(profile);

            try
            {
                await _appDbContext.SaveChangesAsync();

                return new BaseResponse<string>("The employee profile has been created succesfully!")
                {
                    IsSuccess = true,
                };
             }
            
            catch (Exception ex)
            {
                return new BaseResponse<string>("Something went wrong, the profile could not be created");
               
            }
        }


        public async Task<BaseResponse<string>> UpdateProfile(string id, ProfileRequestDTO profileDto)
        {
            var validator = await _profileRequestDTO.ValidateAsync(profileDto);

            if (!validator.IsValid)
            {
                return new BaseResponse<string>("One or more validation errors were made") 
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };
            }

            var profile = await _appDbContext.Profiles.FindAsync(id);

            if (profile == null)
            {
                return new BaseResponse<string>($"There are not records with id: {id}") { }; 
            }

            profile.Assists = profileDto.Assists;
            profile.Absences = profileDto.Absences;
            profile.Delays = profileDto.Delays;
            profile.Country = profileDto.Country;
            profile.State = profileDto.State;
            profile.Municipality = profileDto.Municipality;
            profile.Salary = profileDto.Salary;

            var result = _appDbContext.Profiles.Update(profile);
            

                if (result.State == EntityState.Modified)
                {
                    await _appDbContext.SaveChangesAsync();
                    return new BaseResponse<string>(profile.Id, "This profile has been updated succesfully!");
                }
                else
                {
                    return new BaseResponse<string>("Something went wrong, this profile could not be updated");
                
                }

            }

 
        

        public async Task<BaseResponse<string>> DeleteProfile(string id)
        {

            var profile = await _appDbContext.Profiles.FindAsync(id);

            if (profile == null)
            {
                return new BaseResponse<string>($"There are not records with id: {id}") { };
            }

            profile.IsDeleted = true;
            var result = _appDbContext.Profiles.Update(profile);


            if (result.State == EntityState.Modified)
            {
                await _appDbContext.SaveChangesAsync();
                return new BaseResponse<string>(profile.Id, $"This profile has been deleted succesfully!");
            }
            else
            {
                return new BaseResponse<string>("Something went wrong, the user could not be deleted");

            }
        }

       

    }
}

