using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProjectSon.WebFormsUI.App_Code;
using WebFormsHelper;
namespace BlogProjectSon.WebFormsUI.UserControls
{
    public partial class UserPanel : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NotificationMessage.Success(divMessage, "Hoşgeldiniz" + SessionManager.ActiveUser.FullName);
            }
        }
    }
}