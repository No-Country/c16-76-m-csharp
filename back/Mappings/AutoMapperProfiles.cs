using AutoMapper;
using back.DTOs;
using back.Entities;
using back.Entities.User;

namespace back.Mappings
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMap<AppUser, UserDto>();
            CreateMap<UserRequestDTO, AppUser>();
            CreateMap<AssignmentDto, Assignment>().ReverseMap();
            CreateMap<UserProfile, ProfileDto>();
            CreateMap<UserProfile, ProfilesDto>();
            CreateMap<ProfileRequestDTO, UserProfile>();
            CreateMap<BenefitsSummary, BenefitsSummaryDto>();
            CreateMap<BenefitsSummaryRequestDTO, BenefitsSummary>();
            CreateMap<ReportRequestDto, Report>();
            CreateMap<Report, ReportDto>();
        }
    }
}
