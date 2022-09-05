using VehicleProject.Core.DTOs;

namespace VehicleProject.Services.Abstract
{
    public interface IVehicleService
    {
        public List<ResponseCarDetailsDto> GetCarDetailsByColor(RequestVehicleDetailsDto request);
        public List<ResponseBusDetailsDto> GetBusDetailsByColor(RequestVehicleDetailsDto request);
        public List<ResponseBoatDetailsDto> GetBoatDetailsByColor(RequestVehicleDetailsDto request);
        public string CarHeadlightStatus(RequestHeadlightStatusDto request);
        public string RemoveCar(RequestDeleteCarDto request);
    }
}
