using back.Entities.Common;

namespace back.Entities
{
    public class Report : BaseEntity
    {
        public DateTime Date { get; set; }
        public int Performance { get; set; }
        public double AchivedGoals { get; set; }
        public double SavedMoney { get; set; }
        public string ProfileId { get; set; }
        public UserProfile Profile { get; set; }
        public string Comments { get; set; }
    }
}
