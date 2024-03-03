using back.Entities;
using back.Enums;

namespace back.DTOs
{
    public class PermissionRequestDTO
    {
        public int DaysAmount { get; set; }
        public DateTime Date { get; set; }
        public string StatusId { get; set; }
        public string ProfileId { get; set; }
        public string TypeId { get; set; }
    }
}
