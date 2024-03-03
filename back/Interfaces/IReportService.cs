using back.DTOs;
using back.Entities;
using back.Utilities.Base;

namespace back.Interfaces;

public interface IReportService
{
    public Task<BaseResponse<string>> Create(ReportRequestDto dto);
    public Task<BaseResponse<List<ReportDto>>> GetAll(PaginationDTO paginationDTO);
    public Task<BaseResponse<ReportDto>> GetById(string id);
    public Task<BaseResponse<List<ReportDto>>> GetByUserId(string uid, PaginationDTO paginationDTO);
    public Task<BaseResponse<string>> Update(string id, ReportRequestDto dto);
    public Task<BaseResponse<string>> Delete(string id);
}
