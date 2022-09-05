using Microsoft.EntityFrameworkCore;
using VehicleProject.Core.Models;
using VehicleProject.Models;

namespace VehicleProject.Data.Entity
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }
        public AppDbContext()
        {

        }
        public DbSet<Car> Cars { get; set; }
        public DbSet<Boat> Boats { get; set; }
        public DbSet<Bus> Buses { get; set; }
        public DbSet<User> Users { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Car>().HasData(
                new Car() { Id = 1, Color = "RED", NumberOfWheels = 4, HeadlightStatus = false },
                new Car() { Id = 2, Color = "BLUE", NumberOfWheels = 4, HeadlightStatus = false },
                new Car() { Id = 3, Color = "BLACK", NumberOfWheels = 4, HeadlightStatus = false },
                new Car() { Id = 4, Color = "WHITE", NumberOfWheels = 4, HeadlightStatus = false },
                new Car() { Id = 5, Color = "RED", NumberOfWheels = 4, HeadlightStatus = false },
                new Car() { Id = 6, Color = "BLUE", NumberOfWheels = 4, HeadlightStatus = false },
                new Car() { Id = 7, Color = "BLACK", NumberOfWheels = 4, HeadlightStatus = false },
                new Car() { Id = 8, Color = "WHITE", NumberOfWheels = 4, HeadlightStatus = false });
            modelBuilder.Entity<Boat>().HasData(
                new Boat() { Id = 1, Color = "RED" },
                new Boat() { Id = 2, Color = "BLUE" },
                new Boat() { Id = 3, Color = "BLACK" },
                new Boat() { Id = 4, Color = "WHITE" });
            modelBuilder.Entity<Bus>().HasData(
                new Bus() { Id = 1, Color = "RED" },
                new Bus() { Id = 2, Color = "BLUE" },
                new Bus() { Id = 3, Color = "BLACK" },
                new Bus() { Id = 4, Color = "WHITE" });           

            base.OnModelCreating(modelBuilder);
        }


    }
}
