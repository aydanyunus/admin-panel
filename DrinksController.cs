﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using EXPRESSO.Models;

namespace EXPRESSO.Areas.Admin.Controllers
{
    public class DrinksController : Controller
    {
        private ExpressoEntities db = new ExpressoEntities();

        // GET: Admin/Drinks
        public ActionResult Index()
        {
            return View(db.Drinks.ToList());
        }

        // GET: Admin/Drinks/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Drink drink = db.Drinks.Find(id);
            if (drink == null)
            {
                return HttpNotFound();
            }
            return View(drink);
        }

        // GET: Admin/Drinks/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Drinks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Photo,Title,Content")] Drink drink, HttpPostedFileBase Photo)
        {
            if (ModelState.IsValid)
            {
                if (Photo != null)
                {
                    string fileName = null;
                    if (Photo.ContentLength > 0 && Photo.ContentLength <= 3 * 1024 * 1024)
                    {
                        if (Photo.ContentType.ToLower() == "image/jpeg" ||
                            Photo.ContentType.ToLower() == "image/jpg" ||
                            Photo.ContentType.ToLower() == "image/png" ||
                            Photo.ContentType.ToLower() == "image/gif"
                        )
                        {
                            DateTime dt = DateTime.Now;
                            var beforeStr = dt.Year + "_" + dt.Month + "_" + dt.Day + "_" + dt.Hour + "_" + dt.Minute + "_" + dt.Second + "_" + dt.Millisecond;
                            fileName = beforeStr + Path.GetFileName(Photo.FileName);
                            var newFilePath = Path.Combine(Server.MapPath("~/Uploads/"), fileName);

                            Photo.SaveAs(newFilePath);
                            drink.Photo = fileName;
                        }
                        else
                        {
                            ViewBag.EditError = "Photo type is not valid.";
                            return View();
                        }
                    }
                    else
                    {
                        ViewBag.EditError = "Photo type should not be more than 3 MB.";
                        return View();
                    }
                }
                db.Drinks.Add(drink);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(drink);
        }

        // GET: Admin/Drinks/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Drink drink = db.Drinks.Find(id);
            if (drink == null)
            {
                return HttpNotFound();
            }
            return View(drink);
        }

        // POST: Admin/Drinks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int? id,[Bind(Include = "Id,Photo,Title,Content")] Drink drink, HttpPostedFileBase Photo)
        {
            if (ModelState.IsValid)
            {
                Drink active = db.Drinks.Find(id);
                if (active != null)
                {
                    string fileName = null;
                    if (Photo != null)
                    {
                        if (Photo.ContentLength > 0 && Photo.ContentLength <= 3 * 1024 * 1024)
                        {
                            if (Photo.ContentType.ToLower() == "image/jpeg" ||
                                Photo.ContentType.ToLower() == "image/jpg" ||
                                Photo.ContentType.ToLower() == "image/png" ||
                                Photo.ContentType.ToLower() == "image/gif"
                            )
                            {
                                var path = Path.Combine(Server.MapPath("~/Uploads/"), active.Photo);

                                if (System.IO.File.Exists(path))
                                {
                                    System.IO.File.Delete(path);
                                }

                                DateTime dt = DateTime.Now;
                                var beforeStr = dt.Year + "_" + dt.Month + "_" + dt.Day + "_" + dt.Hour + "_" + dt.Minute + "_" + dt.Second + "_" + dt.Millisecond;
                                fileName = beforeStr + Path.GetFileName(Photo.FileName);
                                var newFilePath = Path.Combine(Server.MapPath("~/Uploads/"), fileName);

                                Photo.SaveAs(newFilePath);

                                active.Photo = fileName;
                                active.Title = drink.Title;
                                active.Content = drink.Content;                                
                                db.SaveChanges();
                                return RedirectToAction("Index");
                            }
                            else
                            {
                                ViewBag.EditError = "Photo type is not valid.";
                                return View(active);
                            }
                        }
                        else
                        {
                            ViewBag.EditError = "Photo type should not be more than 3 MB.";
                            return View(active);
                        }
                    }
                    else
                    {
                        active.Title = drink.Title;                        
                        active.Content = drink.Content;                                
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                }
                else
                {
                    ViewBag.EditError = "Id is not correct.";
                    return View(active);
                }               
            }
            return View(drink);
        }

        // GET: Admin/Drinks/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Drink drink = db.Drinks.Find(id);
            if (drink == null)
            {
                return HttpNotFound();
            }
            return View(drink);
        }

        // POST: Admin/Drinks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Drink drink = db.Drinks.Find(id);
            db.Drinks.Remove(drink);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
