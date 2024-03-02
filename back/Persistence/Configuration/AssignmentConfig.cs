using back.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace back.Persistence.Configuration
{
    public class AssignmentConfig : IEntityTypeConfiguration<Assignment>
    {
        public void Configure(EntityTypeBuilder<Assignment> builder)
        {
            builder.ToTable("Assignments");

            builder.HasKey(x => x.Id);

            builder.HasOne(x => x.Profile)
                .WithMany(x => x.Assignments)
                .HasForeignKey(x => x.ProfileId)
                .IsRequired()
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasOne(x => x.Status)
                .WithMany(x => x.Assignments)
                .HasForeignKey(x => x.StatusId)
                .IsRequired()
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
