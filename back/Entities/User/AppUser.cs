using Microsoft.AspNetCore.Identity;

namespace EmpleaGestion.Entities.User
{
    public class AppUser : IdentityUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string ProfileId { get; set; }
        public Profile Profile { get; set; }
    }
}
