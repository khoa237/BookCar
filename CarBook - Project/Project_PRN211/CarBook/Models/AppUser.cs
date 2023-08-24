using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace CarBook.Models
{
    public class AppUser : IdentityUser
    {
        [MaxLength(255)]
        public string avatar { get; set; }
        [MaxLength(100)]
        public string FullName { set; get; }
        [MaxLength(255)]
        public string Address { set; get; }
        [DataType(DataType.Date)]
        public DateTime? Birthday { set; get; }
    }
}
