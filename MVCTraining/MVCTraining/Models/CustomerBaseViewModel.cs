using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MvcTraining.Models
{
    public class CustomerBaseViewModel
    {   
        [Key]
        public int UserID { get; set; }

        public string UserName { get; set; }
    }
}