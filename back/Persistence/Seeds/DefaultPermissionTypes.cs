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
                var typesNames = context.PermissionTypes.Select(x => x.Name).ToList();

                if (!typesNames.Contains(type.Name))
                {
                    context.PermissionTypes.Add(type);
                    await context.SaveChangesAsync();
                }
            }
        }
    }
}
