using back.Enums;
using back.Entities.User;
using Microsoft.AspNetCore.Identity;

namespace back.Persistence.Seeds
{
    public class DefaultRoles
    {
        public static async Task SeedAsync(UserManager<AppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            // Seed Roles
            await roleManager.CreateAsync(new IdentityRole(Roles.Admin.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.Manager.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.Coordinator.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.Employee.ToString()));
        }
    }
}
