using back.Entities.Common;

namespace back.Entities
{
    public class BenefitsSummary : BaseEntity
    {
        public bool IncludesBonusA { get; set; }
        public double BonusA { get; set; }
        public bool IncludesBonusB { get; set; }
        public double BonusB { get; set; }
        public bool IncludesBonusC { get; set; }
        public double BonusC { get; set; }
        public int Holidays { get; set; }
        public bool HasHealthCare { get; set; }
        public string ProfileId { get; set; }
        public UserProfile Profile { get; set; }
    }
}
