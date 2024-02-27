using back.DTOs;
using back.Interfaces;
using back.Utilities.Base;
using Microsoft.AspNetCore.Mvc;
namespace back.Controller;

[Route("api/[controller]")]
[ApiController]
public class UserController : ControllerBase
{

    private readonly IUserService _userService;
    public UserController(IUserService userService)
    {
        _userService = userService;
    }

    [HttpGet]
    // public async Task<IActionResult> GetAll(int pageSize = 10, int pageNumber = 2)
    public async Task<IActionResult> GetAll([FromQuery] PaginationDTO paginationDTO)
    {
        return Ok(_userService.GetAll(paginationDTO.PageSize, paginationDTO.PageNumber).Result);
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetById(string id)
    {
        if (id == null) return BadRequest("Id was not provided");

        var user = _userService.GetById(id).Result;

        return Ok(user);
    }

    [HttpPost]
    public async Task<IActionResult> Create(UserRequestDTO dto)
    {
        var user = await _userService.Create(dto);
        return Ok(user);
    }

    [HttpPut("{email}")]
    public async Task<IActionResult> Update(string email, UserRequestDTO dto)
    {
        if (email == null) return BadRequest("Email was not provided");

        var user = _userService.Update(email, dto).Result;

        return Ok(user);
    }

    [HttpDelete("{email}")]
    public async Task<IActionResult> Delete(string email)
    {
        if (email == null) return BadRequest("Email was not provided");

        var user = _userService.Delete(email).Result;

        return Ok(user);
    }

    [HttpGet("amount")]
    // public async Task<IActionResult> GetAll(int pageSize = 10, int pageNumber = 2)
    public async Task<IActionResult> GetRecordsAmount()
    {
        var count = _userService.GetRecordsAmount().Result;
        return Ok(count);
    }
}