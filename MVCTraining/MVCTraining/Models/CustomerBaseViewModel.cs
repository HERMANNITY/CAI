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

        [Display(Name = "First Name")]
        public string firstName { get; set; }

        [Display(Name = "Last Name")]
        public string lastName { get; set; }

        public string UserName {
            get
            {
                return firstName;
            }
            set
            {
                UserName = value;
            }
        }

        
    }
}