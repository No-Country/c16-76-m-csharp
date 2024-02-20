using back.Entities;

namespace back.Persistence.Seeds
{
    public class EntityRelationMethods
    {
        public static UserProfile SeedProfile()
        {
            var profile = new UserProfile()
            {
                Assist = 100,
                Absences = 0,
                Delays = 10
            };

            return profile;
        }
    }
}
