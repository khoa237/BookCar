using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CarBook.Models
{
    public class Order
    {
        [Key]
        public int Id { get; set; }
        public string PickUpLocation { get; set; }
        public string DropUpLocation { get; set; }
        public DateTime PickUpDate { get; set; }
        public DateTime DropUpDate { get; set; }
        public string Time { get; set; }
        public float? Price { get; set; }

        [ForeignKey("Car")]
        public int? CarID { get; set; }
        public Car? Car { get; set; }

        [ForeignKey("AppUser")]
        [DataType("nvarchar(450)")]
        public string UserId { get; set; }
        public IdentityUser? User { get; set; }
        [DataType("nvarchar(20)")]
        public string Status { get; set; }
        public string? Note { get; set; }
    }
}
