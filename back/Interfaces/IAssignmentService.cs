using back.DTOs;
using back.Entities;
using back.Utilities.Base;

namespace back.Interfaces;

public interface IAssignmentService
{
    public Task<BaseResponse<string>> Create(AssignmentRequestDTO dto);
    public Task<BaseResponse<List<AssignmentDto>>> GetAll(int pageSize, int pageNumber);
    public Task<BaseResponse<AssignmentDto>> GetById(string id);
    public Task<BaseResponse<string>> Update(string id, AssignmentRequestDTO dto);
    public Task<BaseResponse<string>> Delete(string id);
}
