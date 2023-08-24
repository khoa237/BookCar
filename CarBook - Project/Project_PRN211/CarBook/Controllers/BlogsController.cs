using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CarBook.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;

namespace CarBook.Controllers
{
	[Authorize]
	public class BlogsController : Controller
    {
        private readonly CarBookContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public BlogsController(CarBookContext context,
            UserManager<IdentityUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

		[AllowAnonymous]
		// GET: Blogs
		public async Task<IActionResult> Index(int? pageNumber)
        {
            var carBookContext = _context.Blogs.Include(b => b.Author).OrderByDescending(b => b.Create_Date);
            ViewData["cmt"] = _context.Comments.ToList();
            int totalCount = await carBookContext.CountAsync();
            int dividedValue = (int)Math.Ceiling(totalCount / (double)5);
            ViewData["TotalCount"] = dividedValue;
            int pageSize = 5;
            return View(await PaginatedList<Blog>.CreateAsync(carBookContext.AsNoTracking(), pageNumber ?? 1, pageSize));
        }

		[AllowAnonymous]
		// GET: Blogs/Details/5
		public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Blogs == null)
            {
                return NotFound();
            }

            var blog = await _context.Blogs
                .Include(b => b.Author)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (blog == null)
            {
                return NotFound();
            }
            ViewData["totalCmt"] = _context.Comments.Where(c => c.BlogId == id).ToList().Count();
            ViewData["Cmt"] = _context.Comments.Include(c => c.Owner).Include(c => c.Blog).Where(c => c.BlogId == id).ToList();
            ViewData["Cmts"] = _context.Comments.ToList();
            ViewData["recentBlog"] = _context.Blogs.Include(b => b.Author)
                .Where(b => b.Id != id)
                .OrderByDescending(b => b.Create_Date).Take(4).ToList();
            return View(blog);
        }

		[Authorize(Roles = "Admin")]
		// GET: Blogs/Create
		public IActionResult Create()
        {
            ViewData["AuthorID"] = _userManager.GetUserId(User);
            return View();
        }

        // POST: Blogs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,Description,Summary,AuthorID,Image")] Blog blog)
        {
            blog.Create_Date = DateTime.Now;
            if (ModelState.IsValid)
            {
                _context.Add(blog);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["AuthorID"] = new SelectList(_context.Users, "Id", "Id", blog.AuthorID);
            return View(blog);
        }

        [HttpPost]
        public IActionResult Comment(int BlogID, string Content, string ContenType, int? ParentID)
        {
            Comment comment = new Comment()
            {
                BlogId = BlogID,
                Content = Content,
                CommentType = ContenType,
                ParentId = ParentID,
                CreatedDate = DateTime.Now,
                OwnerId = _userManager.GetUserId(User)
            };
            _context.Comments.Add(comment);
            _context.SaveChanges();
            return RedirectToAction("Details", "Blogs", new { id = BlogID });
        }

		[Authorize(Roles = "Admin")]
		// GET: Blogs/Edit/5
		public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Blogs == null)
            {
                return NotFound();
            }

            var blog = await _context.Blogs.FindAsync(id);
            if (blog == null)
            {
                return NotFound();
            }
            ViewData["AuthorID"] = new SelectList(_context.Users, "Id", "Id", blog.AuthorID);
            return View(blog);
        }

        // POST: Blogs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Title,Description,AuthorID,Create_Date,Image")] Blog blog)
        {
            if (id != blog.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(blog);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BlogExists(blog.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["AuthorID"] = new SelectList(_context.Users, "Id", "Id", blog.AuthorID);
            return View(blog);
        }
		[Authorize(Roles = "Admin")]
		// GET: Blogs/Delete/5
		public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Blogs == null)
            {
                return NotFound();
            }

            var blog = await _context.Blogs
                .Include(b => b.Author)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (blog == null)
            {
                return NotFound();
            }

            return View(blog);
        }

        // POST: Blogs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Blogs == null)
            {
                return Problem("Entity set 'CarBookContext.Blogs'  is null.");
            }
            var blog = await _context.Blogs.FindAsync(id);
            if (blog != null)
            {
                _context.Blogs.Remove(blog);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BlogExists(int id)
        {
            return (_context.Blogs?.Any(e => e.Id == id)).GetValueOrDefault();
        }


    }
}
