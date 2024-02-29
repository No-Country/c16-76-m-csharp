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
            builder.ToTable("Profiles");

            builder.HasKey(x => x.Id);

            builder.HasOne(x => x.BenefitsSummary)
                .WithOne(x => x.Profile)
                .HasForeignKey<BenefitsSummary>(x => x.ProfileId)
                .IsRequired()
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
