﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCTraining.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Search()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public new ActionResult Profile()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}