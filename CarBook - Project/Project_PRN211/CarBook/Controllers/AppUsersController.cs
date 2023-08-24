using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using CarBook.Models;
using Microsoft.AspNetCore.Authorization;

namespace CarBook.Controllers
{
	[Authorize(Roles = "Admin")]
	public class AppUsersController : Controller
    {
		public class UserAndRole : AppUser
        {
            public string RoleNames { get; set; }
        }
        private readonly UserManager<IdentityUser> _userManager;
        public AppUsersController(UserManager<IdentityUser> userManager)
        {
            _userManager = userManager;
        }
        public async Task<IActionResult> Index()
        {

            var qr = from u in _userManager.Users
                     select new UserAndRole
                     {
                         Id = u.Id,
                         UserName = u.UserName,
                     };
            var listAppUsers = qr.ToList();
            foreach (var user in listAppUsers)
            {
                var roles = await _userManager.GetRolesAsync(await _userManager.FindByIdAsync(user.Id));
                user.RoleNames = string.Join(", ", roles);
            }
            ViewBag.listAppUsers = listAppUsers;
            return View();
        }
    }
}
