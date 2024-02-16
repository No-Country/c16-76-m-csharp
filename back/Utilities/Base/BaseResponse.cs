using FluentValidation.Results;

namespace back.Utilities.Base;

public class BaseResponse<T>
{
    public bool IsSuccess { get; set; }
    public int? TotalRecords { get; set; }
    public int? StatusCode { get; set; }
    public T? Data { get; set; }
    public List<T>? Items { get; set; }
    public IEnumerable<ValidationFailure>? Errors { get; set; }
    public string? Message { get; set; }
}