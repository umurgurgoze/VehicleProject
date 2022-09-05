using VehicleProject.Core.DTOs;
using VehicleProject.Data.Entity;
using VehicleProject.Models;
using VehicleProject.Services.Abstract;

namespace VehicleProject.Services.Concrete
{
    public class VehicleService : IVehicleService
    {
        private readonly AppDbContext _context;
        public VehicleService(AppDbContext context)
        {
            _context = context;
        }
        public List<ResponseBoatDetailsDto> GetBoatDetailsByColor(RequestVehicleDetailsDto request)
        {
            List<ResponseBoatDetailsDto> boatDto = new();
            var data = _context.Set<Boat>().Where(x => x.Color == request.Color.ToUpper()).ToList();
            if (data.Count != 0)
            {
                foreach (var item in data)
                {
                    boatDto.Add(new ResponseBoatDetailsDto()
                    {
                        Color = item.Color,
                        Id = item.Id
                    });
                }
                return boatDto;
            }
            else
            {
                return new List<ResponseBoatDetailsDto>()
                {
                    new ResponseBoatDetailsDto()
                    {
                        ErrorMessage ="The vehicle was not found."
                    }
                };
            }
        }
        public List<ResponseBusDetailsDto> GetBusDetailsByColor(RequestVehicleDetailsDto request)
        {
            List<ResponseBusDetailsDto> busDto = new();
            var data = _context.Set<Bus>().Where(x => x.Color == request.Color.ToUpper()).ToList();
            if (data.Count != 0)
            {
                foreach (var item in data)
                {
                    busDto.Add(new ResponseBusDetailsDto()
                    {
                        Color = item.Color,
                        Id = item.Id
                    });
                }
                return busDto;
            }
            else
            {
                return new List<ResponseBusDetailsDto>()
                {
                    new ResponseBusDetailsDto()
                    {
                        ErrorMessage ="The vehicle was not found."
                    }
                };
            }

        }
        public List<ResponseCarDetailsDto> GetCarDetailsByColor(RequestVehicleDetailsDto request)
        {
            List<ResponseCarDetailsDto> carDto = new();
            var data = _context.Set<Car>().Where(x => x.Color == request.Color.ToUpper()).ToList();
            if (data.Count != 0)
            {
                foreach (var item in data)
                {
                    carDto.Add(new ResponseCarDetailsDto()
                    {
                        Color = item.Color,
                        Id = item.Id
                    });
                }
                return carDto;
            }
            else
            {
                return new List<ResponseCarDetailsDto>()
                {
                    new ResponseCarDetailsDto()
                    {
                        ErrorMessage ="The vehicle was not found."
                    }
                };
            }
        }
        public string CarHeadlightStatus(RequestHeadlightStatusDto request)
        {
            var data = _context.Set<Car>().Find(request.Id);
            if (data != null)
            {
                if (data.HeadlightStatus == true)
                {
                    data.HeadlightStatus = false;
                    _context.Set<Car>().Update(data);
                    _context.SaveChanges();
                    return "Headligths turned off";
                }
                else
                {
                    data.HeadlightStatus = true;
                    _context.Set<Car>().Update(data);
                    _context.SaveChanges();
                    return "Headlights turned on";
                }
            }
            else
            {
                return $"Car:{request.Id} was not found.";
            }

        }
        public string RemoveCar(RequestDeleteCarDto request)
        {
            var data = _context.Set<Car>().Find(request.Id);
            if (data != null)
            {
                _context.Remove(data);
                _context.SaveChanges();
                return $"Car:{data.Id} has been deleted.";
            }
            else
            {
                return $"Car:{request.Id} was not found.";
            }

        }
    }
}
