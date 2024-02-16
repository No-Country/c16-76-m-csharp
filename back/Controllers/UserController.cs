using back.DTOs;
using back.Entities.User;
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
    public ActionResult<BaseResponse<AppUser>> GetAll(int limit)
    {
        return Ok(_userService.GetAll(limit).Result);
    }

    [HttpGet("{id}")]
    public ActionResult<BaseResponse<AppUser>> GetById(string id)
    {

        var user = _userService.GetById(id).Result;

        if (user.Data is null)
            return NotFound(user);

        return Ok(user);
    }

    [HttpPost]
    public ActionResult<BaseResponse<bool>> Create(UserDto userDto)
    {

        var user = _userService.Create(userDto).Result;

        if (!user.IsSuccess)
            return BadRequest(user);

        return Created(nameof(GetAll), user);
    }

    [HttpPut("{id}")]
    public ActionResult<BaseResponse<bool>> Update(string id, UserDto userDto)
    {
        var user = _userService.Update(id, userDto).Result;

        if (!user.Data)
            return NotFound(user);

        if (!user.IsSuccess)
            return BadRequest(user);


        return Ok(user);
    }

    [HttpDelete("{id}")]
    public ActionResult<BaseResponse<bool>> Delete(string id)
    {
        var user = _userService.Delete(id).Result;

        if (!user.IsSuccess)
            return NotFound(user);

        return Ok(user);
    }
}