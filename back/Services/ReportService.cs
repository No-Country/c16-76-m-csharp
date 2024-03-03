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
    public class ReportService : IReportService
    {
        private readonly AppDbContext _appDbContext;
        private readonly IProfileService _profileService;
        private readonly IValidator<ReportRequestDto> _reportDtoValidator;
        private readonly IMapper _mapper;

        public ReportService(
            AppDbContext appDbContext,
            IValidator<ReportRequestDto> reportDtoValidator,
            IMapper mapper,
            IProfileService profileService
        )
        {
            _appDbContext = appDbContext;
            _reportDtoValidator = reportDtoValidator;
            _mapper = mapper;
            _profileService = profileService;
        }

        public async Task<BaseResponse<string>> Create(ReportRequestDto dto)
        {
            var validator = await _reportDtoValidator.ValidateAsync(dto);

            if (!validator.IsValid)
                return new BaseResponse<string>("One or more validation errors were made")
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };

            var profile = _profileService.GetProfileById(dto.ProfileId).Result;

            if (profile.Data is null)
                return new BaseResponse<string>($"There are not profiles with id: {dto.ProfileId}");

            Report newReport = _mapper.Map<Report>(dto);

            _appDbContext.Add(newReport);
            await _appDbContext.SaveChangesAsync();

            return new BaseResponse<string>($"The report has been created succesfully!");
        }

        public async Task<BaseResponse<string>> Delete(string id)
        {
            var report = await _appDbContext.Reports
                .Where(x => x.Id == id && !x.IsDeleted)
                .FirstOrDefaultAsync();

            if (report is null)
                return new BaseResponse<string>($"There are not records with id: {id}") { };

            report.IsDeleted = true;

            _appDbContext.Update(report);
            await _appDbContext.SaveChangesAsync();

            return new BaseResponse<string>($"The report has been deleted succesfully!");
        }

        public async Task<BaseResponse<List<ReportDto>>> GetAll(PaginationDTO paginationDTO)
        {

            var reports = await _appDbContext.Reports
                .OrderBy(x => x.Date)
                .Where(x => !x.IsDeleted)
                .Skip((paginationDTO.PageNumber - 1) * paginationDTO.PageSize)
                .Take(paginationDTO.PageSize)
                .Include(p => p.Profile)
                .ToListAsync();

            var reportsMap = _mapper.Map<List<ReportDto>>(reports);

            return new BaseResponse<List<ReportDto>>(reportsMap) { };
        }

        public async Task<BaseResponse<ReportDto>> GetById(string id)
        {
            var report = await _appDbContext.Reports
                .Where(x => x.Id == id && !x.IsDeleted)
                .FirstOrDefaultAsync();

            if (report is null)
                return new BaseResponse<ReportDto>($"There are not records with id: {id}") { };


            var reportDto = _mapper.Map<ReportDto>(report);

            // ReportDto reportDto = new()
            // {
            //     Id = report.Id,
            //     Date = report.Date,
            //     Performance = report.Performance,
            //     AchivedGoals = report.AchivedGoals,
            //     SavedMoney = report.SavedMoney,
            //     ProfileId = report.ProfileId,
            //     // Comments = report.Comments,
            // };
            return new BaseResponse<ReportDto>(reportDto) { };
        }

        public async Task<BaseResponse<List<ReportDto>>> GetByUserId(string uid, PaginationDTO paginationDTO)
        {
            var reports = await _appDbContext.Reports
                .Where(x => x.ProfileId == uid && !x.IsDeleted)
                .Skip((paginationDTO.PageNumber - 1) * paginationDTO.PageSize)
                .Take(paginationDTO.PageSize)
                .ToListAsync();

            if (reports is null)
                return new BaseResponse<List<ReportDto>>($"There are not records with uid: {uid}") { };

            var reportsMap = _mapper.Map<List<ReportDto>>(reports);

            return new BaseResponse<List<ReportDto>>(reportsMap) { };
        }

        public async Task<BaseResponse<string>> Update(string id, ReportRequestDto dto)
        {
            var validator = await _reportDtoValidator.ValidateAsync(dto);

            if (!validator.IsValid)
                return new BaseResponse<string>("One or more validation errors were made")
                {
                    Errors = validator.Errors.Select(x => x.ErrorMessage).ToList()
                };

            if (string.IsNullOrEmpty(id))
                return new BaseResponse<string>($"The id is required") { };

            var report = await _appDbContext.Reports.Where(x => !x.IsDeleted).FirstOrDefaultAsync();

            if (report is null)
                return new BaseResponse<string>($"There are not records with id: {id}") { };

            report.Date = dto.Date;
            report.Performance = dto.Performance;
            report.AchivedGoals = dto.AchivedGoals;
            report.SavedMoney = dto.SavedMoney;
            report.ProfileId = dto.ProfileId;

            _appDbContext.Update(report);
            await _appDbContext.SaveChangesAsync();

            return new BaseResponse<string>($"The report has been updated succesfully!");

        }
    }
}
