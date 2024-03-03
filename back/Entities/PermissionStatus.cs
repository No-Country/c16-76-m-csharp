using back.Entities.Common;

namespace back.Entities
{
    public class PermissionStatus : BaseEntity
    {
        public string Name { get; set; }
        public ICollection<Permission> Permissions { get; set; }
    }
}
