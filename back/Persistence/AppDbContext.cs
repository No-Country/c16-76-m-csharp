using back.Interfaces;
using back.Entities;
using back.Entities.Common;
using back.Entities.User;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Reflection;

namespace back.Persistence
{
    public class AppDbContext : IdentityDbContext<AppUser>
    {
        private readonly IDateTimeService _dateTime;

        public AppDbContext(DbContextOptions<AppDbContext> options, IDateTimeService dateTime) : base(options)
        {
            ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
            _dateTime = dateTime;
        }

        public DbSet<AppUser> AppUsers { get; set; }
        public DbSet<PermissionType> PermissionTypes { get; set; }
        public DbSet<UserProfile> Profiles { get; set; }
        public DbSet<Permission> Permissions { get; set; }
        public DbSet<Assignment> Assignments { get; set; }
        public DbSet<BenefitsSummary> BenefitsSummaries { get; set; }
        public DbSet<Report> Reports { get; set; }
        public DbSet<PermissionStatus> PermissionStatus { get; set; }
        public DbSet<AssignmentStatus> AssignmentStatus { get; set; }

        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = new CancellationToken())
        {
            foreach(var entry in ChangeTracker.Entries<BaseEntity>())
            {
                switch (entry.State)
                {
                    case EntityState.Added:
                        entry.Entity.CreatedBy = "Example User";
                        entry.Entity.CreatedAt = _dateTime.NowUtc;
                        entry.Entity.LastModifiedBy = "Initial User";
                        entry.Entity.LastModifiedAt = _dateTime.NowUtc;
                        entry.Entity.IsDeleted = false;
                        break;
                    case EntityState.Modified:
                        entry.Entity.LastModifiedBy = "Example User";
                        entry.Entity.LastModifiedAt = _dateTime.NowUtc;
                        break;
                }
            }

            return base.SaveChangesAsync(cancellationToken);
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());

            base.OnModelCreating(builder);
        }
    }
}
