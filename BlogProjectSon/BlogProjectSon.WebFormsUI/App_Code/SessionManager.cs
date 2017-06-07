using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogProjectSon.MODEL;

namespace BlogProjectSon.WebFormsUI.App_Code
{
    public static class SessionManager
    {
        //propfull
        

        public static AdminUser ActiveAdmin
        {
            get 
            {
                return HttpContext.Current.Session["ActiveAdmin"] as AdminUser; 
            }
            set
            {
                HttpContext.Current.Session.Add("ActiveAdmin", value);
            }
        }

        public static User ActiveUser
        {
            get
            {
                return HttpContext.Current.Session["ActiveUser"] as User;
            }
            set
            {
                HttpContext.Current.Session.Add("ActiveUser", value);
            }
        }
    }
}