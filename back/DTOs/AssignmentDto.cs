using back.Enums;

namespace back.Entities
{
    public class AssignmentDto
    {
        public string ProfileEmail { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public Status Status { get; set; }
        //public string ProfileId { get; set; }
        //public Profile Profile { get; set; }
    }
}
