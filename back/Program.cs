using back.Interfaces;
using back.Persistence;
using back.Persistence.Seeds;
using back.Services;
using back.Entities.User;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using FluentValidation;
using back.DTOs;
using back.Validations;
using System.Text.Json.Serialization;
using back.Entities;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddAutoMapper(typeof(Program));

// builder.Services.AddControllers();
builder.Services.AddControllers().AddJsonOptions(x =>
                x.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles);

// Services
builder.Services.AddTransient<IDateTimeService, DateTimeService>();
builder.Services.AddTransient<IUserService, UserService>();
builder.Services.AddTransient<IAssignmentService, AssignmentService>();
builder.Services.AddTransient<IProfileService, ProfileService>();
builder.Services.AddTransient<IBenefitsSummaryService, BenefitsSummaryService>();
builder.Services.AddTransient<IReportService, ReportService>();
builder.Services.AddTransient<IPermissionsService, PermissionsService>();

// Validations
builder.Services.AddTransient<IValidator<AssignmentRequestDTO>, AssignmentRequestDTOValidator>();
builder.Services.AddTransient<IValidator<UserDto>, UserDtoValidator>();
builder.Services.AddTransient<IValidator<UserRequestDTO>, RegisterUserDTOValidator>();
builder.Services.AddTransient<IValidator<ProfileRequestDTO>, ProfileRequestDTOValidator>();
builder.Services.AddTransient<IValidator<BenefitsSummaryRequestDTO>, BenefitsSummaryDTOValidator>();
builder.Services.AddTransient<IValidator<ReportRequestDto>, ReportRequestDtoValidator>();
builder.Services.AddTransient<IValidator<PermissionRequestDTO>, PermissionRequestDTOValidator>();

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services.AddIdentity<AppUser, IdentityRole>()
    .AddEntityFrameworkStores<AppDbContext>()
    .AddDefaultTokenProviders();

builder.Services.AddCors(options =>
{
    var frontendURL = builder.Configuration.GetValue<string>("frontend_url");
    options.AddDefaultPolicy(builder =>
    {
        builder.WithOrigins(frontendURL).AllowAnyMethod().AllowAnyHeader();
    });
});

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseCors();

app.UseAuthorization();

app.MapControllers();

try
{
    // await SeedUsers();

    app.Run();
}
catch (Exception)
{

    throw;
}

async Task SeedUsers()
{
    using var scope = app.Services.CreateScope();
    var userManager = scope.ServiceProvider.GetRequiredService<UserManager<AppUser>>();
    var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<IdentityRole>>();
    var context = scope.ServiceProvider.GetRequiredService<AppDbContext>();

    await DefaultRoles.SeedAsync(userManager, roleManager);
    await DefaultAdminUser.SeedAsync(userManager, roleManager);
    await DefaultBasicUser.SeedAsync(userManager, roleManager);
    await DefaultPermissionTypes.SeedAsync(context);
    await DefaultPermissionStatus.SeedAsync(context);
    await DefaultAssignmentStatus.SeedAsync(context);
}