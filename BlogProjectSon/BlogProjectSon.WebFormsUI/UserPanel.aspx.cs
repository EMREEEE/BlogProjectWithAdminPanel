using BlogProjectSon.WebFormsUI.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI
{
    public partial class UserPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (SessionManager.ActiveUser == null)
                {
                    NotificationMessage.Error(divMessage, "Yetkisiz Giriş..");
                    divPanel.Style.Add("display", "none");
                }
                else
                {

                    divPanel.Controls.Add(Page.LoadControl("~/UserControls/UserPanel.ascx"));
                }

            }
        }


    }
}