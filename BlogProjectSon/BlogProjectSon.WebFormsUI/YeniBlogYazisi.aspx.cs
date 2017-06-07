using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProjectSon.WebFormsUI.App_Code;
namespace BlogProjectSon.WebFormsUI
{
    public partial class YeniBlogYazisi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionManager.ActiveUser == null)
            {
                Response.Redirect("~/UserLogin.aspx");
            }
        }
    }
}