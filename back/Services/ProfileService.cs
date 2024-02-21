using back.Entities;
using back.Interfaces;
using back.Persistence;
using Microsoft.EntityFrameworkCore;

namespace back.Services
{
    public class ProfileService : IProfileService
    {
        private readonly AppDbContext _context;

        public ProfileService(AppDbContext context)
        {
            _context = context;
        }
        public async Task AddProfile(UserProfile profile)
        {

            await _context.Profiles.AddAsync(profile);
            await _context.SaveChangesAsync();

        }
            
    }
}

