using back.Entities;

namespace back.Persistence.Seeds
{
    public class SeedAssignmentStatusList
    {
        public static ICollection<AssignmentStatus> Status = new List<AssignmentStatus>
        {
            new()
            {
                Name = "Sin empezar",
            },
            new()
            {
                Name = "En Progerso",
            },
            new()
            {
                Name = "En Revisión",
            },
            new()
            {
                Name = "Finalizada",
            }
        };
    }
}
