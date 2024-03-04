using back.Entities.User;

namespace back.DTOs
{
    public class ProfileRequestDTO
    {
        public int Assists { get; set; }
        public int Absences { get; set; }
        public int Delays { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public string Municipality { get; set; }
        public double Salary { get; set; }
    }
}
