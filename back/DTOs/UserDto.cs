using back.Entities;

namespace back.DTOs;

public class UserDto
{
    public string Id { get; set; }
    public string UserName { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    // public string PasswordHash { get; set; } // Mejor no exponer esta info
    public string Email { get; set; }
    public string PhoneNumber { get; set; }
    public UserProfile Profile { get; set; }

    //public string ProfileId { get; set; }
}
