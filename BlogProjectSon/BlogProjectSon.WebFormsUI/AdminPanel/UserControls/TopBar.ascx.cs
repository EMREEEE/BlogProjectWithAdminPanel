using BlogProjectSon.MODEL;
using BlogProjectSon.WebFormsUI.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProjectSon.WebFormsUI.AdminPanel.UserControls
{
    public partial class TopBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           AdminUser activeAdmin = SessionManager.ActiveAdmin;
           ltAdminFullName.Text = activeAdmin.FullName;
           ltAdminFullName1.Text = activeAdmin.FullName;
           ltMemberDate.Text = activeAdmin.MemberShipDate.ToString();
           ltAdminJob.Text = activeAdmin.Job;
           imgAdminPhoto.ImageUrl = activeAdmin.Photo;
           imgAdminPhoto1.ImageUrl = activeAdmin.Photo;
           imgAdminPhoto.AlternateText = activeAdmin.FullName;
           imgAdminPhoto1.AlternateText = activeAdmin.FullName;
        }

        protected void lnkSignOut_Click(object sender, EventArgs e)
        {
            SessionManager.ActiveAdmin = null;
            Response.Redirect("Login.aspx");
        }
    }
}