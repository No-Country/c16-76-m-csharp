using back.Entities.User;

namespace back.Persistence.Seeds
{
    public class SeedUsersList
    {
        public static ICollection<AppUser> Users = new List<AppUser>
        {
            new ()
            {
                FirstName = "Alice",
                LastName = "Johnson",
                Email = "alice.johnson@example.com",
                UserName = "alice_j",
                PhoneNumber = "555-1234",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Bob",
                LastName = "Smith",
                Email = "bob.smith@example.com",
                UserName = "bob_s",
                PhoneNumber = "555-5678",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Charlie",
                LastName = "Brown",
                Email = "charlie.brown@example.com",
                UserName = "charlie_b",
                PhoneNumber = "555-9876",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "David",
                LastName = "Miller",
                Email = "david.miller@example.com",
                UserName = "david_m",
                PhoneNumber = "555-4321",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Ella",
                LastName = "Garcia",
                Email = "ella.garcia@example.com",
                UserName = "ella_g",
                PhoneNumber = "555-2468",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Fiona",
                LastName = "Lee",
                Email = "fiona.lee@example.com",
                UserName = "fiona_l",
                PhoneNumber = "555-1357",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "George",
                LastName = "Wang",
                Email = "george.wang@example.com",
                UserName = "george_w",
                PhoneNumber = "555-8642",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Hannah",
                LastName = "Choi",
                Email = "hannah.choi@example.com",
                UserName = "hannah_c",
                PhoneNumber = "555-9753",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Isaac",
                LastName = "Martinez",
                Email = "isaac.martinez@example.com",
                UserName = "isaac_m",
                PhoneNumber = "555-2468",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Julia",
                LastName = "Nguyen",
                Email = "julia.nguyen@example.com",
                UserName = "julia_n",
                PhoneNumber = "555-7890",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Katie",
                LastName = "Rodriguez",
                Email = "katie.rodriguez@example.com",
                UserName = "katie_r",
                PhoneNumber = "555-3141",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Liam",
                LastName = "Gonzalez",
                Email = "liam.gonzalez@example.com",
                UserName = "liam_g",
                PhoneNumber = "555-2718",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Mia",
                LastName = "Lopez",
                Email = "mia.lopez@example.com",
                UserName = "mia_l",
                PhoneNumber = "555-8888",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Noah",
                LastName = "Ramirez",
                Email = "noah.ramirez@example.com",
                UserName = "noah_r",
                PhoneNumber = "555-7777",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Olivia",
                LastName = "Perez",
                Email = "olivia.perez@example.com",
                UserName = "olivia_p",
                PhoneNumber = "555-9999",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Peter",
                LastName = "Gomez",
                Email = "peter.gomez@example.com",
                UserName = "peter_g",
                PhoneNumber = "555-2468",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Quinn",
                LastName = "Rivera",
                Email = "quinn.rivera@example.com",
                UserName = "quinn_r",
                PhoneNumber = "555-1357",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Rachel",
                LastName = "Sanchez",
                Email = "rachel.sanchez@example.com",
                UserName = "rachel_s",
                PhoneNumber = "555-9753",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Samuel",
                LastName = "Torres",
                Email = "samuel.torres@example.com",
                UserName = "samuel_t",
                PhoneNumber = "555-3141",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Tara",
                LastName = "Vargas",
                Email = "tara.vargas@example.com",
                UserName = "tara_v",
                PhoneNumber = "555-2718",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Ursula",
                LastName = "Martinez",
                Email = "ursula.martinez@example.com",
                UserName = "ursula_m",
                PhoneNumber = "555-1357",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Victor",
                LastName = "Nguyen",
                Email = "victor.nguyen@example.com",
                UserName = "victor_n",
                PhoneNumber = "555-8642",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Wendy",
                LastName = "O'Connor",
                Email = "wendy.oconnor@example.com",
                UserName = "wendy_o",
                PhoneNumber = "555-9753",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Xavier",
                LastName = "Perez",
                Email = "xavier.perez@example.com",
                UserName = "xavier_p",
                PhoneNumber = "555-3141",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Yara",
                LastName = "Quintero",
                Email = "yara.quintero@example.com",
                UserName = "yara_q",
                PhoneNumber = "555-2718",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Zara",
                LastName = "Ramirez",
                Email = "zara.ramirez@example.com",
                UserName = "zara_r",
                PhoneNumber = "555-1357",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Aaron",
                LastName = "Gonzalez",
                Email = "aaron.gonzalez@example.com",
                UserName = "aaron_g",
                PhoneNumber = "555-8642",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Bella",
                LastName = "Choi",
                Email = "bella.choi@example.com",
                UserName = "bella_c",
                PhoneNumber = "555-9753",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Carlos",
                LastName = "Martinez",
                Email = "carlos.martinez@example.com",
                UserName = "carlos_m",
                PhoneNumber = "555-3141",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Diana",
                LastName = "Nguyen",
                Email = "diana.nguyen@example.com",
                UserName = "diana_n",
                PhoneNumber = "555-2718",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Eva",
                LastName = "Rodriguez",
                Email = "eva.rodriguez@example.com",
                UserName = "eva_r",
                PhoneNumber = "555-1357",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Frank",
                LastName = "Gonzalez",
                Email = "frank.gonzalez@example.com",
                UserName = "frank_g",
                PhoneNumber = "555-8642",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Grace",
                LastName = "Choi",
                Email = "grace.choi@example.com",
                UserName = "grace_c",
                PhoneNumber = "555-9753",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Henry",
                LastName = "Martinez",
                Email = "henry.martinez@example.com",
                UserName = "henry_m",
                PhoneNumber = "555-3141",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Ivy",
                LastName = "Nguyen",
                Email = "ivy.nguyen@example.com",
                UserName = "ivy_n",
                PhoneNumber = "555-2718",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Jack",
                LastName = "Hernandez",
                Email = "jack.hernandez@example.com",
                UserName = "jack_h",
                PhoneNumber = "555-1357",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Karen",
                LastName = "Lopez",
                Email = "karen.lopez@example.com",
                UserName = "karen_l",
                PhoneNumber = "555-8642",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
            new ()
            {
                FirstName = "Leo",
                LastName = "Choi",
                Email = "leo.choi@example.com",
                UserName = "leo_c",
                PhoneNumber = "555-9753",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true,
                Profile = EntityRelationMethods.SeedProfile()
            },
        };
    }
}
