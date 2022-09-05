using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using VehicleProject.Data.Entity;
using VehicleProject.Services.Abstract;
using VehicleProject.Services.Concrete;

namespace VehicleProject.Service.Extensions
{
    public static class ServiceCollectionExtentions
    {
        public static void AddDependencies(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddScoped<IVehicleService, VehicleService>();
            services.AddDbContext<AppDbContext>(x =>
            {
                x.UseSqlServer(configuration.GetConnectionString("SqlConnection"));
            });
        }
        public static void AddAuthentication(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            .AddJwtBearer(options =>
             {
                 options.TokenValidationParameters = new TokenValidationParameters
                 {
                     ValidateIssuerSigningKey = true,
                     IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8
                 .GetBytes(configuration.GetSection("Token").Value)),
                     ValidateAudience = false,
                     ValidateIssuer = false
                 };
             });
        }
    }
}
