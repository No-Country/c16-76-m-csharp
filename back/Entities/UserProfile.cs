using back.Entities.Common;
using back.Entities.User;

namespace back.Entities
{
    public class UserProfile : BaseEntity
    {
        public int Assist { get; set; }
        public int Absences { get; set; }
        public int Delays { get; set; }

        // public Country Country { get; set; }
        // public Location Location { get; set; }

        // public string AppUserId { get; set; }
        public AppUser AppUser { get; set; }

        public ICollection<Permission> Permissions { get; set; }

        //public string BenefitsSummaryId { get; set; }
        public BenefitsSummary BenefitsSummary { get; set; }

        //public ICollection<Report> Reports { get; set; }
    }
}
