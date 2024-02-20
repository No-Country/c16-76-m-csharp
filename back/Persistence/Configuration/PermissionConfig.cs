using back.Entities;
using back.Entities.User;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace back.Persistence.Configuration
{
    public class PermissionConfig : IEntityTypeConfiguration<Permission>
    {
        public void Configure(EntityTypeBuilder<Permission> builder)
        {
            // Establecemos el Nombre de la Tabla en SQL
            builder.ToTable("Permissions");

            // Establecemos la llave primaria de esta Tabla
            builder.HasKey(x => x.Id);

            // Establecemos la relación con la clase Profile (Se incluye la llave foranea), en este caso es una relación uno a muchos
            builder.HasOne(x => x.Profile)
                .WithMany(x => x.Permissions)
                .HasForeignKey(x => x.Id)
                .IsRequired()
                .OnDelete(DeleteBehavior.Restrict);

            // Va a faltar configurar más relaciones y campos, pero las relaciones se harán una por una y los campos de momento no son obligatorios
        }
    }
}
