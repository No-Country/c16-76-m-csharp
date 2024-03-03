using back.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace back.Persistence.Configuration
{
    public class PermissionStatusConfig : IEntityTypeConfiguration<PermissionStatus>
    {
        public void Configure(EntityTypeBuilder<PermissionStatus> builder)
        {
            builder.ToTable("PermissionStatus");

            builder.HasKey(x => x.Id);
        }
    }
}
