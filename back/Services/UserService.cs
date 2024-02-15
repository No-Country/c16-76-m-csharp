using back.DTOs;
using back.Entities;
using back.Entities.User;
using back.Interfaces;
using back.Persistence;
using back.Utilities;
using Microsoft.EntityFrameworkCore;

namespace back.Services;

class UserService : IUserService
{
    private readonly AppDbContext _appDbContext;

    public UserService(AppDbContext appDbContext)
    {
        _appDbContext = appDbContext;
    }

    public async Task<bool> Create(UserDto userDto)
    {
        if (userDto is null)
            return false;

        var passwordHash = PasswordHasher.Hash(userDto.Password);

        AppUser user = new()
        {
            FirstName = userDto.FirstName,
            LastName = userDto.LastName,
            PasswordHash = passwordHash,
            Email = userDto.Email,
            PhoneNumber = userDto.PhoneNumber,
        };

        _appDbContext.Users.Add(user);
        await _appDbContext.SaveChangesAsync();

        return true;
    }

    public async Task<bool> Delete(string id)
    {
        return false;
    }

    public async Task<IEnumerable<AppUser>> GetAll(int limit)
    {
        return await _appDbContext.Users
            .Take(limit)
            .ToListAsync();
    }

    public async Task<AppUser> GetById(string id)
    {
        var user = await _appDbContext.Users.FindAsync(id);

        if (user is null)
            return null!;

        return user;
    }

    // Don't work
    public async Task<bool> Update(string id, UserDto userDto)
    {
        var user = GetById(id).Result;
        _appDbContext.ChangeTracker.Clear();

        if (user is null)
            return false;

        AppUser putUser = new()
        {
            Id = user.Id,
            FirstName = userDto.FirstName,
            LastName = userDto.LastName,
            PasswordHash = user.PasswordHash,
            Email = userDto.Email,
            PhoneNumber = userDto.PhoneNumber,
            PhoneNumberConfirmed = user.PhoneNumberConfirmed,
            AccessFailedCount = user.AccessFailedCount,
            TwoFactorEnabled = user.TwoFactorEnabled,
            EmailConfirmed = user.EmailConfirmed,
        };

        _appDbContext.Update(putUser);
        _appDbContext.SaveChanges();

        return true;
    }
}
