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
            CreateMap<AppUser, UserDto>()
                .ForMember(dest => dest.BenefitsId, opt =>  opt.MapFrom(src => src.Profile.BenefitsSummary.Id));;

            CreateMap<UserRequestDTO, AppUser>();
            
            CreateMap<UserProfile, ProfilesDto>();
            CreateMap<UserProfile, ProfileDto>()
                .ForMember(dest => dest.FirstName, opt => opt.MapFrom(src => src.AppUser.FirstName))
                .ForMember(dest => dest.LastName, opt => opt.MapFrom(src => src.AppUser.LastName))
                .ForMember(dest => dest.UserName, opt => opt.MapFrom(src => src.AppUser.UserName))
                .ForMember(dest => dest.Email, opt => opt.MapFrom(src => src.AppUser.Email))
                .ForMember(dest => dest.PhoneNumber, opt => opt.MapFrom(src => src.AppUser.PhoneNumber));

            CreateMap<Assignment, AssignmentDto>();
            CreateMap<AssignmentRequestDTO, Assignment>();

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
