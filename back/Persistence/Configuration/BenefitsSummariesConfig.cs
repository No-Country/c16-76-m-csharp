using back.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace back.Persistence.Configuration
{




    public class BenefitsSummariesConfig: IEntityTypeConfiguration<BenefitsSummary>
    {
        public void Configure(EntityTypeBuilder<BenefitsSummary> builder)
        {

            builder.ToTable("BenefitsSummaries");

            builder.HasKey(x => x.Id);

            builder.HasOne(x => x.Profile)
                .WithOne(x => x.BenefitsSummary)
                .HasForeignKey<UserProfile>(x => x.Id)
                .IsRequired()
                .OnDelete(DeleteBehavior.Restrict);



        }
    }
}
