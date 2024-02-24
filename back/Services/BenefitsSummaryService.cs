using AutoMapper;
using back.DTOs;
using back.Entities;
using back.Entities.User;
using back.Enums;
using back.Interfaces;
using back.Persistence;
using back.Utilities.Base;
using FluentValidation;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace back.Services
{
    public class BenefitsSummaryService : IBenefitsSummaryService
    {
        private readonly AppDbContext _appDbContext;
        private readonly IValidator<BenefitsSummaryRequestDTO> _benefitsSummaryRequestDTO;
        private readonly IMapper _mapper;

        public BenefitsSummaryService(
            AppDbContext appDbContext,
            IValidator<BenefitsSummaryRequestDTO> benefitsSummaryRequestDTO,
            IMapper mapper)
        {
            _appDbContext = appDbContext;
            _benefitsSummaryRequestDTO = benefitsSummaryRequestDTO;
            _mapper = mapper;
        }

        //Get All
        public async Task<BaseResponse<List<BenefitsSummaryDto>>> GetBenefitsSummaries(int pageSize, int pageNumber)
        {
         var benefitsSummary= await _appDbContext.BenefitsSummaries
                .OrderBy(bs => bs.LastModifiedAt)
                .Where(p => p.IsDeleted == false)
                .Skip((pageNumber - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();

        var BSummaryDto = _mapper.Map<List<BenefitsSummaryDto>>(benefitsSummary);

         return new BaseResponse<List<BenefitsSummaryDto>>(BSummaryDto) { };
        }

        //Get Profile by Id
        public async Task<BaseResponse<BenefitsSummaryDto>> GetBenefitsSummaryById(string id)
        {
            var benefitsSummary = await _appDbContext.BenefitsSummaries.FindAsync(id);
            var benefitsSummarydto = _mapper.Map<BenefitsSummaryDto>(benefitsSummary);

            var response = new BaseResponse<BenefitsSummaryDto>();

            if (benefitsSummary== null || benefitsSummary.IsDeleted == true)
            {
                return new BaseResponse<BenefitsSummaryDto>($"There are not records with id: {id}") { };
            }

            return new BaseResponse<BenefitsSummaryDto>(benefitsSummarydto) { };
        }

        //Post profile

        public async Task<BaseResponse<string>> AddBenefitsSummary(BenefitsSummaryRequestDTO benefitsSummaryDto)
        {
            var validator = await _benefitsSummaryRequestDTO.ValidateAsync(benefitsSummaryDto);

            if (!validator.IsValid)
            {
                return new BaseResponse<string>("One or more validation errors were made")
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };
            }

            //var userProfile = await _appDbContext.Profiles.FindAsync(benefitsSummaryDto.ProfileId);

            //if (userProfile == null)
            //{
            //    return new BaseResponse<string>("User profile with the provided Profile Id was not found");
            //}

            var benefitsSummary = _mapper.Map<BenefitsSummary>(benefitsSummaryDto);

            // benefitsSummary.Profile = userProfile;

            //var profile = new UserProfile();
            //profile.Assist = benefitsSummaryDto.Assist;
            //profile.Absences = benefitsSummaryDto.Absences;
            //profile.Delays = benefitsSummaryDto.Delays;

            //benefitsSummary.Profile = profile;

            var result = await _appDbContext.BenefitsSummaries.AddAsync(benefitsSummary);

            try
            {
                await _appDbContext.SaveChangesAsync();

                return new BaseResponse<string>("The benefits summary has been created succesfully!")
                {
                    IsSuccess = true,
                };
             }
            
            catch (Exception ex)
            {
                return new BaseResponse<string>("Something went wrong, the benefits summary could not be created");
               
            }
        }


        public async Task<BaseResponse<string>> UpdateBenefitsSummary(string id, BenefitsSummaryRequestDTO benefitsSummaryDto)
        {
            var validator = await _benefitsSummaryRequestDTO.ValidateAsync(benefitsSummaryDto);

            if (!validator.IsValid)
            {
                return new BaseResponse<string>("One or more validation errors were made") 
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };
            }

            var benefitsSummary = await _appDbContext.BenefitsSummaries.FindAsync(id);

            if (benefitsSummary == null)
            {
                return new BaseResponse<string>($"There are not records with id: {id}") { }; 
            }

                benefitsSummary.IncludesBonusA = benefitsSummaryDto.IncludesBonusA;
                benefitsSummary.IncludesBonusB = benefitsSummaryDto.IncludesBonusB;
                benefitsSummary.IncludesBonusC = benefitsSummaryDto.IncludesBonusC;
                benefitsSummary.BonusA= benefitsSummaryDto.BonusA;
                benefitsSummary.BonusB= benefitsSummaryDto.BonusB;
                benefitsSummary.BonusC= benefitsSummaryDto.BonusC;
                benefitsSummary.HasHealthCare= benefitsSummaryDto.HasHealthCare;
                benefitsSummary.Holidays= benefitsSummaryDto.Holidays;  



                var result = _appDbContext.BenefitsSummaries.Update(benefitsSummary);
            

                if (result.State == EntityState.Modified)
                {
                    await _appDbContext.SaveChangesAsync();
                    return new BaseResponse<string>(benefitsSummary.Id, "This benefits summary has been updated succesfully!");
                }
                else
                {
                    return new BaseResponse<string>("Something went wrong, this benefits summary could not be updated");
                
                }

            }

 
        

        public async Task<BaseResponse<string>> DeleteBenefitsSummary(string id)
        {

            var benefitsSummary = await _appDbContext.BenefitsSummaries.FindAsync(id);

            if (benefitsSummary == null)
            {
                return new BaseResponse<string>($"There are not records with id: {id}") { };
            }

            benefitsSummary.IsDeleted = true;
            var result = _appDbContext.BenefitsSummaries.Update(benefitsSummary);


            if (result.State == EntityState.Modified)
            {
                await _appDbContext.SaveChangesAsync();
                return new BaseResponse<string>(benefitsSummary.Id, $"This profile has been deleted succesfully!");
            }
            else
            {
                return new BaseResponse<string>("Something went wrong, the user could not be deleted");

            }
        }

       

    }
}

