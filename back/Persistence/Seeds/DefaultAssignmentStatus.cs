namespace back.Persistence.Seeds
{
    public class DefaultAssignmentStatus
    {
        public static async Task SeedAsync(AppDbContext context)
        {
            foreach (var status in SeedAssignmentStatusList.Status)
            {
                var statusNames = context.AssignmentStatus.Select(x => x.Name).ToList();

                if (!statusNames.Contains(status.Name))
                {
                    context.AssignmentStatus.Add(status);
                    await context.SaveChangesAsync();
                }
            }
        }
    }
}
