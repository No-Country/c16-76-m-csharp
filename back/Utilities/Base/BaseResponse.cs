namespace back.Utilities.Base;

public class BaseResponse<T>
{
    public BaseResponse()
    {
        
    }

    public BaseResponse(T data, string? message = null)
    {
        IsSuccess = true;
        Message = message;
        Data = data;
    }

    public BaseResponse(string message)
    {
        IsSuccess = false; 
        Message = message;
    }

    public bool IsSuccess { get; set; }
    public string? Message { get; set; }
    public T? Data { get; set; }
    public List<string>? Errors { get; set; }
    // public int? TotalRecords { get; set; }
    // public int? StatusCode { get; set; }
    // public List<T>? Items { get; set; }
}