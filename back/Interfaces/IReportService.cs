using back.Entities;
using back.Utilities.Base;

namespace back.Interfaces;

public interface IReportService
{
    public Task<BaseResponse<string>> Create(ReportRequestDto dto);
    public Task<BaseResponse<List<Report>>> GetAll(int pageSize, int pageNumber);
    public Task<BaseResponse<Report>> GetById(string id);
    public Task<BaseResponse<string>> Update(string id, ReportRequestDto dto);
    public Task<BaseResponse<string>> Delete(string id);
}
