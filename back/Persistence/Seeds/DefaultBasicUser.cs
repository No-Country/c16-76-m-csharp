using back.Entities.User;
using back.Enums;
using Microsoft.AspNetCore.Identity;

namespace back.Persistence.Seeds
{
    public class DefaultBasicUser
    {
        public static async Task SeedAsync(UserManager<AppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            foreach (var defaultUser in SeedUsersList.Users)
            {
                if (userManager.Users.All(u => u.Id != defaultUser.Id))
                {
                    var user = await userManager.FindByEmailAsync(defaultUser.Email);
                    if (user == null)
                    {
                        await userManager.CreateAsync(defaultUser, "123Pa$word");
                        await userManager.AddToRoleAsync(defaultUser, Roles.Employee.ToString());
                    }
                }
            }
        }
    }
}
