using back.DTOs;
using back.Interfaces;
using Microsoft.AspNetCore.Mvc;
namespace back.Controller;

[Route("api/[controller]")]
[ApiController]
public class AssignmentController : ControllerBase
{

    private readonly IAssignmentService _activityStatusService;
    public AssignmentController(IAssignmentService activityStatusService)
    {
        _activityStatusService = activityStatusService;
    }

    [HttpGet]
    // public async Task<IActionResult> GetAll(int pageSize, int pageNumber, Status? status)
    public async Task<IActionResult> GetAll(int pageSize, int pageNumber)
    {
        // return Ok(_activityStatusService.GetAll(pageSize, pageNumber, status).Result);
        return Ok(_activityStatusService.GetAll(pageSize, pageNumber).Result);
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetById(string id)
    {
        if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

        var assignment = _activityStatusService.GetById(id).Result;

        return Ok(assignment);
    }

    [HttpPost]
    public async Task<IActionResult> Create(AssignmentRequestDTO dto)
    {
        var assignment = await _activityStatusService.Create(dto);
        return Ok(assignment);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> Update(string id, AssignmentRequestDTO dto)
    {
        if (string.IsNullOrEmpty(id)) return BadRequest("Email was not provided");

        var assignment = _activityStatusService.Update(id, dto).Result;

        return Ok(assignment);
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> Delete(string id)
    {
        if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

        var assignment = _activityStatusService.Delete(id).Result;

        return Ok(assignment);
    }

    //[HttpDelete("/byName/{name}")]
    //public async Task<IActionResult> DeleteByName(string name)
    //{
    //    if (string.IsNullOrEmpty(name)) return BadRequest("Name was not provided");

    //    var assignment = _activityStatusService.DeleteByName(name).Result;

    //    return Ok(assignment);
    //}
    
}