using back.Entities.User;
using back.Entities;

namespace back.DTOs
{
    public class ProfileDto
    {
        public string Id { get; set; }
        public int Assist { get; set; }
        public int Absences { get; set; }
        public int Delays { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public string Municipality { get; set; }
        public double Salary { get; set; }
        public AppUser AppUser { get; set; }
        public ICollection<Permission> Permissions { get; set; }
    }
}
