namespace back.DTOs
{
    public class PaginationDTO
    {
        public int PageNumber { get; set; } = 1;
        public int pageSize = 10;
        private readonly int maxNumberOfRecordsPerPage = 50;

        public int PageSize
        {
            get
            {
                return pageSize;
            }
            set
            {
                pageSize = (value > maxNumberOfRecordsPerPage) ? maxNumberOfRecordsPerPage : value;
            }
        }
    }
}
