using back.Entities.Common;

namespace back.Entities
{
    public class AssignmentStatus : BaseEntity
    {
        public string Name { get; set; }
        public ICollection<Assignment> Assignments { get; set; }
    }
}
