using back.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace back.Persistence.Configuration
{
    public class ReportConfig : IEntityTypeConfiguration<Report>
    {
        public void Configure(EntityTypeBuilder<Report> builder)
        {
            builder.ToTable("Reports");

            builder.HasKey(x => x.Id);

            builder.HasOne(x => x.Profile)
                .WithMany(x => x.Reports)
                .HasForeignKey(x => x.ProfileId)
                .IsRequired()
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
