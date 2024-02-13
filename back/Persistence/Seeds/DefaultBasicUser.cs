using back.Enums;
using EmpleaGestion.Entities.User;
using Microsoft.AspNetCore.Identity;

namespace back.Persistence.Seeds
{
    public class DefaultBasicUser
    {
        public static async Task SeedAsync(UserManager<AppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            for (int i = 0; i < 100; i++)
            {
                // Seed Default Admin User
                var defaultUser = new AppUser
                {
                    UserName = $"user{i}Basic",
                    Email = $"userBasic{i}@mail.com",
                    FirstName = $"Neme{i}",
                    LastName = $"LasName{i}",
                    EmailConfirmed = true,
                    PhoneNumberConfirmed = true
                };

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
