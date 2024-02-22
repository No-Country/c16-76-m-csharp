using back.DTOs;
using back.Entities;
using back.Enums;
using back.Utilities.Base;

namespace back.Interfaces;

public interface IActivityStatusService
{
    public Task<BaseResponse<string>> Create(AssignmentDto dto);
    public Task<BaseResponse<List<AssignmentDto>>> GetAll(int pageSize, int pageNumber, Status? status);
    public Task<BaseResponse<Assignment>> GetById(string id);
    public Task<BaseResponse<string>> Update(string id, AssignmentDto dto);
    public Task<BaseResponse<string>> Delete(string name);
}
