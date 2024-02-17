namespace back.Entities
{
    public class Report
    {
        public DateTime Date { get; set; }
        public int Performance { get; set; }
        public int AchivedGoals { get; set; }
        public double SavedMoney { get; set; }
        public string ProfileId { get; set; }
        public Profile Profile { get; set; }
    }
}
