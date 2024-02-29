namespace back.Entities
{
    public class ReportDto
    {
        public DateTime Date { get; set; }
        public int Performance { get; set; }
        public int AchivedGoals { get; set; }
        public double SavedMoney { get; set; }
        // public UserProfile Profile { get; set; }
    }
}
