using back.Entities;

namespace back.DTOs;

public class UserDto
{
    public string Id { get; set; }
    public string UserName { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string PhoneNumber { get; set; }
    public string ProfileId { get; set; }
    public string BenefitsId { get; set; }
}
