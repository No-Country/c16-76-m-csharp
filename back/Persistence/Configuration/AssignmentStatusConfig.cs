using back.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace back.Persistence.Configuration
{
    public class AssignmentStatusConfig : IEntityTypeConfiguration<AssignmentStatus>
    {
        public void Configure(EntityTypeBuilder<AssignmentStatus> builder)
        {
            builder.ToTable("AssignmentStatus");

            builder.HasKey(x => x.Id);
        }
    }
}
