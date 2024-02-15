using back.Entities;
using back.Entities.Common;
using Microsoft.AspNetCore.Identity;

namespace back.DTOs;

public class UserDto : BaseEntity
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Password { get; set; }
    public string Email { get; set; }
    public string PhoneNumber { get; set; }

    //public string ProfileId { get; set; }
}
