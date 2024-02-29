using Microsoft.AspNetCore.Identity;

namespace back.Entities.User
{
    public class AppUser : IdentityUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool IsDeleted { get; set; }
        public UserProfile Profile { get; set; }
    }
}
