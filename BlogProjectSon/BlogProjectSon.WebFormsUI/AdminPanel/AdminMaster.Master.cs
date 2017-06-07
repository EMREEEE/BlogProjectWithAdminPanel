using BlogProjectSon.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProjectSon.WebFormsUI.App_Code;
namespace BlogProjectSon.WebFormsUI.AdminPanel
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (CheckIfAdminIsActive())
                    Response.Redirect("Login.aspx");
            }
            
            
        }

        private bool CheckIfAdminIsActive()
        {
           
            return SessionManager.ActiveAdmin == null;
        }
    }
}