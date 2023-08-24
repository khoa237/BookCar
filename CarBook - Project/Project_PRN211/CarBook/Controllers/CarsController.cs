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
    public class CarsController : Controller
    {
        private readonly CarBookContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public CarsController(
            UserManager<IdentityUser> userManager,
            CarBookContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        // GET: Cars
        [AllowAnonymous]
        public async Task<IActionResult> Index(string currentFilter, string searchString, int? pageNumber, string electricCar, int? categoryId, string sortOrder)
        {
            IQueryable<Car> carsQuery = _context.Cars.Include(c => c.Category).Include(c => c.Feature).Include(c => c.Property).Include(c => c.Owner);

            if (!string.IsNullOrEmpty(searchString))
            {
                carsQuery = carsQuery.Where(c => c.Name.Contains(searchString) || c.Category.Name.Contains(searchString) || /*c.Price.Contains(searchString)*/c.Price == float.Parse(searchString));
                pageNumber = 1;
            }
            else
            {
                searchString = currentFilter;
            }
            ViewData["CurrentFilter"] = searchString;
            var categoryList = await _context.Categories.ToListAsync();
            ViewData["CategoryList"] = categoryList;
            ViewData["CurrentSort"] = sortOrder;
            ViewData["SortPriceD"] = String.IsNullOrEmpty(sortOrder) ? "pricedesc" : "pricedesc";
            ViewData["SortPriceA"] = sortOrder == "priceasc" ? "priceasc" : "priceasc";

            // Lọc theo electricCar 
            if (electricCar != null)
            {
                carsQuery = carsQuery.Where(c => c.Property.Fuel == "Electricity");
                ViewData["CarElectric"] = "Electricity";
            }
            // Lọc theo CategoryID 
            if (categoryId != null)
            {
                carsQuery = carsQuery.Where(c => c.CategoryID == categoryId);
                ViewData["CurrentCategory"] = categoryId;
            }
            switch (sortOrder)
            {
                case "priceasc":
                    carsQuery = carsQuery.OrderBy(c => c.Price);
                    break;
                case "pricedesc":
                    carsQuery = carsQuery.OrderByDescending(c => c.Price);
                    break;
                default:
                    break;
            }

            int totalCount = await carsQuery.CountAsync();
            int dividedValue = (int)Math.Ceiling(totalCount / (double)9);
            ViewData["TotalCount"] = dividedValue;
            int pageSize = 9;
            return View(await PaginatedList<Car>.CreateAsync(carsQuery.AsNoTracking(), pageNumber ?? 1, pageSize));
        }

		[AllowAnonymous]
		// GET: Cars/Details/5
		public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Cars == null)
            {
                return NotFound();
            }

            var car = await _context.Cars
                .Include(c => c.Category)
                .Include(c => c.Feature)
                .Include(c => c.Owner)
                .Include(c => c.Property)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (car == null)
            {
                return NotFound();
            }

            var carsWithSameCategory = await _context.Cars
               .Include(p => p.Category)
               .Where(p => p.Category.Id == car.Category.Id && p.Id != id)
               .ToListAsync();

            ViewData["CartsWithSameCategory"] = carsWithSameCategory;
            return View(car);
        }

		[Authorize(Roles = "Admin,Owner")]
		// GET: Cars/Create
		public IActionResult Create()
        {
            ViewData["Feature"] = new Feature();
            ViewData["Property"] = new Property();
            ViewData["CategoryID"] = new SelectList(_context.Categories, "Id", "Name");
            ViewData["OwnerID"] = _userManager.GetUserId(User);
            return View();
        }

        // POST: Cars/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,Description,Image,Price,CategoryID,OwnerID")] Car car,
            string Mileage, string Transmission, string Seats, string Luggage, string Fuel,
            bool isAirconditions, bool isChildSeat, bool isGPS, bool isLuggage, bool isMusic,
            bool isSeatBelt, bool isSleepingBed, bool isWater, bool isBluetooth, bool isOnboardComputer,
            bool isAudioInput, bool isLongTermTrips, bool isCarKit, bool isRemoteCentralLocking, bool isClimateControl)
        {
            Property property = new Property()
            {
                Milerage = int.Parse(Mileage),
                Transmission = Transmission,
                Fuel = Fuel,
                Luggage = int.Parse(Luggage),
                Seats = int.Parse(Seats)
            };
            Feature feature = new Feature()
            {
                IsAirconditions = isAirconditions,
                IsChildSeat = isChildSeat,
                IsGPS = isGPS,
                IsLuggage = isLuggage,
                IsMusic = isMusic,
                IsSeatBelt = isSleepingBed,
                IsSleepingBed = isSleepingBed,
                IsWater = isWater,
                IsBluetooth = isBluetooth,
                IsOnboardComputer = isOnboardComputer,
                IsAudioInput = isAudioInput,
                IsLongTermTrips = isLongTermTrips,
                IsCarKit = isCarKit,
                IsRemoteCentralLocking = isRemoteCentralLocking,
                IsClimateControl = isClimateControl,

            };
            _context.Features.Add(feature);
            _context.Properties.Add(property);
            await _context.SaveChangesAsync();
            car.FeatureID = _context.Features.OrderBy(f => f.Id).Select(f => f.Id).LastOrDefault();
            car.PropertyID = _context.Properties.OrderBy(p => p.Id).Select(p => p.Id).LastOrDefault();

            if (ModelState.IsValid)
            {
                _context.Add(car);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            _context.Features.Remove(_context.Features.OrderBy(f => f.Id).LastOrDefault());
            _context.Properties.Remove(_context.Properties.OrderBy(p => p.Id).LastOrDefault());
            ViewData["CategoryID"] = new SelectList(_context.Categories, "Id", "Name", car.CategoryID);
            ViewData["Feature"] = feature;
            ViewData["OwnerID"] = _userManager.GetUserId(User);
            ViewData["Property"] = property;
            return View(car);
        }

        // GET: Cars/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Cars == null)
            {
                return NotFound();
            }

            var car = await _context.Cars.FindAsync(id);
            if (car == null)
            {
                return NotFound();
            }
            ViewData["CategoryID"] = new SelectList(_context.Categories, "Id", "Name", car.CategoryID);
            ViewData["FeatureID"] = new SelectList(_context.Features, "Id", "Id", car.FeatureID);
            ViewData["OwnerID"] = new SelectList(_context.Set<AppUser>(), "Id", "Id", car.OwnerID);
            ViewData["PropertyID"] = new SelectList(_context.Properties, "Id", "Id", car.PropertyID);
            return View(car);
        }

        // POST: Cars/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Description,Image,Price,CategoryID,PropertyID,FeatureID,OwnerID")] Car car)
        {
            if (id != car.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(car);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CarExists(car.Id))
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
            ViewData["CategoryID"] = new SelectList(_context.Categories, "Id", "Name", car.CategoryID);
            ViewData["FeatureID"] = new SelectList(_context.Features, "Id", "Id", car.FeatureID);
            ViewData["OwnerID"] = new SelectList(_context.Set<AppUser>(), "Id", "Id", car.OwnerID);
            ViewData["PropertyID"] = new SelectList(_context.Properties, "Id", "Id", car.PropertyID);
            return View(car);
        }

        // GET: Cars/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Cars == null)
            {
                return NotFound();
            }

            var car = await _context.Cars
                .Include(c => c.Category)
                .Include(c => c.Feature)
                .Include(c => c.Owner)
                .Include(c => c.Property)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (car == null)
            {
                return NotFound();
            }

            return View(car);
        }

        // POST: Cars/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Cars == null)
            {
                return Problem("Entity set 'CarBookContext.Cars'  is null.");
            }
            var car = await _context.Cars.FindAsync(id);
            if (car != null)
            {
                _context.Cars.Remove(car);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CarExists(int id)
        {
            return (_context.Cars?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
