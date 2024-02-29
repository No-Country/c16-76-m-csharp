using back.Entities;

namespace back.Persistence.Seeds
{
    public class SeedPermissionTypesList
    {
        public static ICollection<PermissionType> Types = new List<PermissionType>
        {
            new PermissionType
            {
                Name = "Médico o accidente",
                LimitDays = 5
            },
            new PermissionType
            {
                Name = "Fallecimiento, accidente o enfermedad grave de familiar",
                LimitDays = 3
            },
            new PermissionType
            {
                Name = "Trámite",
                LimitDays = 1
            },
            new PermissionType
            {
                Name = "Matrimonio",
                LimitDays = 3
            },
            new PermissionType
            {
                Name = "Maternidad",
                LimitDays = 50
            },
            new PermissionType
            {
                Name = "Paternidad",
                LimitDays = 7
            },
            new PermissionType
            {
                Name = "Mudanza",
                LimitDays = 2
            },
            new PermissionType
            {
                Name = "Deberes inexcusables",
                LimitDays = 1
            },
            new PermissionType
            {
                Name = "Formación",
                LimitDays = 1
            }
        };
    }
}
