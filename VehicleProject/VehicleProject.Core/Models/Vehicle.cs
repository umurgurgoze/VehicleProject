namespace VehicleProject.Models
{
    public class Vehicle
    {
        public int Id { get; set; }
        public string Color { get; set; }
    }
    public class Car : Vehicle
    {
        public int NumberOfWheels { get; set; }
        public bool HeadlightStatus { get; set; }
    }
    public class Boat : Vehicle
    {

    }
    public class Bus : Vehicle
    {

    }

}
