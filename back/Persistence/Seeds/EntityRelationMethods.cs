using back.Entities;

namespace back.Persistence.Seeds
{
    public class EntityRelationMethods
    {
        public static UserProfile SeedProfile()
        {
            var profile = new UserProfile()
            {
                Assist = 0,
                Absences = 0,
                Delays = 0,
                Country = "NoCountry",
                State = "NoState",
                Municipality = "NoMunicipality",
                Salary = 500,
                BenefitsSummary = SeedBenefitsSummary()
            };

            return profile;
        }

        public static BenefitsSummary SeedBenefitsSummary()
        {
            var summary = new BenefitsSummary()
            {
                IncludesBonusA = true,
                BonusA = 1000,
                IncludesBonusB = false,
                BonusB = 0,
                IncludesBonusC = false,
                BonusC = 0,
                Holidays = 14,
                HasHealthCare = true
            };

            return summary;
        }
    }
}
