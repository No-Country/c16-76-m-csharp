using EmpleaGestion.Entities.Common;

namespace EmpleaGestion.Entities
{
    public class PermissionType : BaseEntity
    {
        public string Name { get; set; }
        public int LimitDays { get; set; }
    }
}
