namespace back.Entities
{
    public class ReportDto
    {
        public string Id { get; set; }
        public DateTime Date { get; set; }
        public int Performance { get; set; }
        public double AchivedGoals { get; set; }
        public double SavedMoney { get; set; }
        public string ProfileId { get; set; }
        public string Comments { get; set; }
    }
}
