using back.Entities.Common;

namespace back.Entities
{
    public class PermissionType : BaseEntity
    {
        public string Name { get; set; }
        public int LimitDays { get; set; }
        public ICollection<Permission> Permissions { get; set; }
    }
}
