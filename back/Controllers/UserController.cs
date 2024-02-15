using back.DTOs;
using back.Entities.User;
using back.Interfaces;
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
    public ActionResult<IEnumerable<AppUser>> GetAll(int limit)
    {
        return Ok(new
        {
            statusCode = 200,
            result = _userService.GetAll(limit).Result
        });
    }

    [HttpGet("{id}")]
    public ActionResult<AppUser?> GetById(string id)
    {

        var user = _userService.GetById(id).Result;

        if (user is null)
            return NotFound(new
            {
                statusCode = 404,
                result = user
            });

        return Ok(new
        {
            statusCode = 200,
            result = user
        });
    }

    [HttpPost]
    public ActionResult<bool?> Create(UserDto userDto)
    {

        var user = _userService.Create(userDto).Result;

        if (!user)
            return BadRequest(new
            {
                statusCode = 400,
                result = user
            });

        return Created(
            nameof(GetAll),
            new
            {
                statusCode = 201,
                result = user
            });
    }

    [HttpPut("{id}")]
    public ActionResult<bool?> Update(string id, UserDto userDto)
    {
        var user = _userService.Update(id, userDto).Result;

        if (!user)
            return NotFound(new
            {
                statusCode = 404,
                result = user
            });

        return Ok(
            new
            {
                statusCode = 200,
                result = user
            });
    }

    [HttpDelete("{id}")]
    public ActionResult<bool?> Delete(string id)
    {
        var user = _userService.Delete(id).Result;

        if (!user)
            return NotFound(new
            {
                statusCode = 404,
                result = user
            });

        return Ok(
            new
            {
                statusCode = 200,
                result = user
            });
    }
}