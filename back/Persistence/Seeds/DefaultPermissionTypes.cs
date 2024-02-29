using back.Entities.User;
using back.Enums;
using Microsoft.AspNetCore.Identity;

namespace back.Persistence.Seeds
{
    public class DefaultPermissionTypes
    {
        public static async Task SeedAsync(AppDbContext context)
        {
            foreach (var type in SeedPermissionTypesList.Types)
            {
                context.PermissionTypes.Add(type);

                await context.SaveChangesAsync();
            }
        }
    }
}
