using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using VehicleProject.Core.DTOs;
using VehicleProject.Services.Abstract;

namespace VehicleProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HomeController : ControllerBase
    {
        private readonly IVehicleService _vehicleService;
        public HomeController(IVehicleService vehicleService)
        {
            _vehicleService = vehicleService;
        }
        [HttpGet, Route("SelectCarsByColor"), Authorize]
        public IActionResult GetCarsByColor(RequestVehicleDetailsDto request)
        {
            return Ok(_vehicleService.GetCarDetailsByColor(request));
        }
        [HttpGet, Route("SelectBusesByColor"), Authorize]
        public List<ResponseBusDetailsDto> GetBusesByColor(RequestVehicleDetailsDto request)
        {
            return _vehicleService.GetBusDetailsByColor(request);
        }
        [HttpGet, Route("SelectBoatsByColor"), Authorize]
        public List<ResponseBoatDetailsDto> GetBoatsByColor(RequestVehicleDetailsDto request)
        {
            return _vehicleService.GetBoatDetailsByColor(request);
        }
        [HttpPost, Route("ChangeHeadlightStatus"), Authorize]
        public string HeadLightStatus(RequestHeadlightStatusDto request)
        {
            return _vehicleService.CarHeadlightStatus(request);
        }
        [HttpDelete, Route("DeleteCarById"), Authorize]
        public void DeleteCar(RequestDeleteCarDto request)
        {
            _vehicleService.RemoveCar(request);
        }
    }
}
