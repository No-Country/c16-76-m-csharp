using back.Entities;
using back.Entities.User;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace back.Persistence.Configuration
{
    public class ProfileConfig : IEntityTypeConfiguration<UserProfile>
    {
        public void Configure(EntityTypeBuilder<UserProfile> builder)
        {
            // Establecemos el Nombre de la Tabla en SQL
            builder.ToTable("Profiles");

            // Establecemos la llave primaria de esta Tabla
            builder.HasKey(x => x.Id);

            // Establecemos la relación con la clase AppUser (Se incluye la llave foranea), en este caso es una relación uno a uno
            //builder.HasOne(x => x.AppUser)
            //    .WithOne(x => x.Profile)
            //    .HasForeignKey<AppUser>(x => x.Id)
            //    .IsRequired()
            //    .OnDelete(DeleteBehavior.Restrict);

            // Va a faltar configurar más relaciones y campos, pero las relaciones se harán una por una y los campos de momento no son obligatorios
        }
    }
}
