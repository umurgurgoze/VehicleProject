using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VehicleProject.Core.DTOs
{
    public class BaseDto
    {
        public int Id { get; set; }
        public string Color { get; set; }
        public string ErrorMessage { get; set; }

    }
}
