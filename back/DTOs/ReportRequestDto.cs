namespace back.Entities
{
    public class ReportRequestDto
    {
        public DateTime Date { get; set; }
        public int Performance { get; set; }
        public int AchivedGoals { get; set; }
        public double SavedMoney { get; set; }
        public string ProfileEmail { get; set; }
    }
}
