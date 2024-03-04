using back.Entities.Common;
using back.Entities.User;

namespace back.Entities
{
    public class UserProfile : BaseEntity
    {
        public int Assists { get; set; }
        public int Absences { get; set; }
        public int Delays { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public string Municipality { get; set; }
        public double Salary { get; set; }
        public string AdmissionDate { get; set; }

        public string AppUserId { get; set; }
        public AppUser AppUser { get; set; }

        public BenefitsSummary BenefitsSummary { get; set; }

        public ICollection<Permission> Permissions { get; set; }

        public ICollection<Report> Reports { get; set; }

        public ICollection<Assignment> Assignments { get; set; }
    }
}
