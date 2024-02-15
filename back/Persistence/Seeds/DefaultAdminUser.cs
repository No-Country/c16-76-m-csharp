using back.Enums;
using back.Entities.User;
using Microsoft.AspNetCore.Identity;

namespace back.Persistence.Seeds
{
    public class DefaultAdminUser
    {
        public static async Task SeedAsync(UserManager<AppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            // Seed Default Admin User
            var defaultUser = new AppUser
            {
                UserName = "userAdmin",
                Email = "userAdmin@mail.com",
                FirstName = "FirstName",
                LastName = "LastName",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true
            };

            if (userManager.Users.All(u => u.Id != defaultUser.Id))
            {
                var user = await userManager.FindByEmailAsync(defaultUser.Email);
                if (user == null)
                {
                    await userManager.CreateAsync(defaultUser, "123Pa$word");
                    await userManager.AddToRoleAsync(defaultUser, Roles.Admin.ToString());
                    await userManager.AddToRoleAsync(defaultUser, Roles.Manager.ToString());
                    await userManager.AddToRoleAsync(defaultUser, Roles.Coordinator.ToString());
                    await userManager.AddToRoleAsync(defaultUser, Roles.Employee.ToString());
                }
            }
        }
    }
}
