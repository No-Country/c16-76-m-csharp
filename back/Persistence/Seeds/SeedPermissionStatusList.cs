using back.Entities;

namespace back.Persistence.Seeds
{
    public class SeedPermissionStatusList
    {
        public static ICollection<PermissionStatus> Status = new List<PermissionStatus>
        {
            new() 
            {
                Name = "Enviada",
            },
            new() 
            {
                Name = "En revisión",
            },
            new() 
            {
                Name = "Aprobada",
            },
            new() 
            {
                Name = "Rechazada",
            }
        };
    }
}
