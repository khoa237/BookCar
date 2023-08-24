using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CarBook.Models
{
    public class Comment
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [DataType("text")]
        public string Content { get; set; }
        public string CommentType { get; set; }
        [ForeignKey("AppUser")]
        [DataType("nvarchar(450)")]
        public string OwnerId { get; set; }
        public IdentityUser? Owner { get; set; }
        public DateTime CreatedDate { get; set; }
        [ForeignKey("Comment")]
        public int? ParentId { get; set; }
        public Comment? Parent { get; set; }
        [ForeignKey("Blog")]
        public int? BlogId { get; set; }
        public Blog? Blog { get; set; }
        
    }
}
