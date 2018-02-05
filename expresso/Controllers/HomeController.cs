using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EXPRESSO.Models;

namespace EXPRESSO.Controllers
{
    public class HomeController : Controller
    {
        ExpressoEntities db = new ExpressoEntities();   
        
        public ActionResult Index()
        {
            ViewBag.Header = db.Headers.First();
            ViewBag.About = db.Abouts.First();
            ViewBag.Services = db.Services.ToList();
            ViewBag.Drinks = db.Drinks.ToList();
            ViewBag.Section = db.Sections.First();
            ViewBag.GalleryFilter = db.GalerryFilters.ToList();
            ViewBag.Gallery = db.Galleries.ToList();
            ViewBag.Reviews = db.Reviews.ToList();
            ViewBag.Posts = db.Posts.ToList();
            ViewBag.Partners = db.Partners.ToList();
            ViewBag.Newsletter = db.Newsletters.First();
            ViewBag.WorkingHours = db.WorkingHours.First();
            ViewBag.callus = db.CallUS.First();
            ViewBag.ExpressoFooter = db.ExpressoFooters.First();
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}