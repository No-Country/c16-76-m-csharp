using back.Entities.User;

namespace back.DTOs
{
    public class ProfileRequestDTO
    {
        public int Assist { get; set; }
        public int Absences { get; set; }
        public int Delays { get; set; }
    }
}
