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
            CreateMap<UserProfile, ProfileDto>(); 
            
            CreateMap<AssignmentDto, Assignment>().ReverseMap();
            
            CreateMap<ProfileRequestDTO, UserProfile>();

            CreateMap<BenefitsSummary, BenefitsSummaryDto>();
            CreateMap<BenefitsSummaryRequestDTO, BenefitsSummary>();

            CreateMap<ReportRequestDto, Report>();
            CreateMap<Report, ReportDto>();

            CreateMap<PermissionRequestDTO, Permission>();
            CreateMap<Permission, PermissionDTO>()
                .ForMember(dest => dest.LimitDays, opt => opt.MapFrom(src => src.Type.LimitDays));
        }
    }
}
