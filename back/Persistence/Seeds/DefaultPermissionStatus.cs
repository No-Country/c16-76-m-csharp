using back.Enums;
using Microsoft.AspNetCore.Identity;

namespace back.Persistence.Seeds
{
    public class DefaultPermissionStatus
    {
        public static async Task SeedAsync(AppDbContext context)
        {
            foreach (var status in SeedPermissionStatusList.Status)
            {
                var statusNames = context.PermissionStatus.Select(x => x.Name).ToList();

                if (!statusNames.Contains(status.Name))
                {
                    context.PermissionStatus.Add(status);
                    await context.SaveChangesAsync();
                }
            }
        }
    }
}
