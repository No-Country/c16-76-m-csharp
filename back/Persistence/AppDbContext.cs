using back.Interfaces;
using EmpleaGestion.Entities;
using EmpleaGestion.Entities.Common;
using EmpleaGestion.Entities.User;
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

        public DbSet<PermissionType> PermissionTypes { get; set; }

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
