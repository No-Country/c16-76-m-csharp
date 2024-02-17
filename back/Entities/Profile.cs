using back.Entities.Common;
using Microsoft.AspNetCore.Identity;

namespace back.Entities
{
    public class Profile : BaseEntity
    {
        public int Assist { get; set; }
        public int Absences { get; set; }
        public int Delays { get; set; }
        // public Country Country { get; set; }
        // public Location Location { get; set; }
        public ICollection<Permission> Permissions { get; set; }
        public string IdentityUserId { get; set; }
        public IdentityUser IdentityUser { get; set; }
        public string BenefitsSummaryId { get; set; }
        public BenefitsSummary BenefitsSummary { get; set; }
        public ICollection<Report> Reports { get; set; }
    }
}
