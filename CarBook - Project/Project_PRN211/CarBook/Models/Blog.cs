using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CarBook.Models
{
    public class Blog
    {
        [Key]
        public int Id { get; set; }
        [DataType("nvarchar(250)")]
        public string Title { get; set; }
        [DataType("Text")]
        public string Description { get; set; }
        [DataType("nvarchar(1000)")]
        public string Summary { get; set; }
        [ForeignKey("AppUser")]
        [DataType("nvarchar(450)")]
        public string AuthorID { get; set; }
        public IdentityUser? Author { get; set; }
        public DateTime Create_Date { get; set; }
        public string Image { get; set; }
    }
}
