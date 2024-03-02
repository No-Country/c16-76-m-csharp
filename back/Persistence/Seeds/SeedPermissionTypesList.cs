using back.Entities;

namespace back.Persistence.Seeds
{
    public class SeedPermissionTypesList
    {
        public static ICollection<PermissionType> Types = new List<PermissionType>
        {
            new ()
            {
                Name = "Médico o accidente",
                LimitDays = 5
            },
            new ()
            {
                Name = "Fallecimiento, accidente o enfermedad grave de familiar",
                LimitDays = 3
            },
            new ()
            {
                Name = "Trámite",
                LimitDays = 1
            },
            new ()
            {
                Name = "Matrimonio",
                LimitDays = 3
            },
            new ()
            {
                Name = "Maternidad",
                LimitDays = 50
            },
            new ()
            {
                Name = "Paternidad",
                LimitDays = 7
            },
            new ()
            {
                Name = "Mudanza",
                LimitDays = 2
            },
            new ()
            {
                Name = "Deberes inexcusables",
                LimitDays = 1
            },
            new ()
            {
                Name = "Formación",
                LimitDays = 1
            }
        };
    }
}
