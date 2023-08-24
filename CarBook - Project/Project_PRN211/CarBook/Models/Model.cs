namespace CarBook.Models
{
    public class Model
    {
        public ICollection<Blog>? Blog { get; set; }
        public ICollection<Comment>? Comment { get; set; }
    }
}
