namespace back.DTOs
{

    public class ProfileDto
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public int Assists { get; set; }
        public int Absences { get; set; }
        public int Delays { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public string Municipality { get; set; }
        public string AdmissionDate { get; set; }
        public double Salary { get; set; }
    }
}
