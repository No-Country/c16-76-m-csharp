namespace back.Entities
{
    public class AssignmentDto
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string StatusId { get; set; }
        public string StatusName { get; set; }
        public string ProfileId { get; set; }
    }
}
