namespace back.DTOs
{
    public class PermissionDTO
    {
        public string Id { get; set; }
        public int DaysAmount { get; set; }
        public int LimitDays { get; set; }
        public DateTime Date { get; set; }
        public string StatusId { get; set; }
        public string StatusName { get; set; }
        public string TypeId { get; set; }
        public string TypeName { get; set; }
        public string ProfileId { get; set; }
    }
}
