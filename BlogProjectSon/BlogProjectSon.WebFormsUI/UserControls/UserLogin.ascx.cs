using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using BlogProjectSon.WebFormsUI.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI.UserControls
{
    public partial class UserLogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userNameOrEmail = txtUserOrEmail.Text;
            string password = Hashing.HashWithMD5(txtPassword.Text);

            User user =
                GenericBS<User>.
                GetSingleItemByCriteria(x => (x.UserName == userNameOrEmail && x.Password == password) || (x.Email == userNameOrEmail && x.Password == password));

            if (user != null)
            {
                if (!user.IsMailConfirmed.Value)
                {
                     NotificationMessage.Error(divMessage, "Henüz mail aktivasyonu yapmadınız!");
                }
                else if (!user.IsActive.Value)
                {
                    NotificationMessage.Error(divMessage, "Hesabınız henüz yönetici tarafından onaylanmamış!");
                 
                }
                else
                {
                    SessionManager.ActiveUser = user;
                    Response.Redirect("~/UserPanel.aspx");
                }
            }
            else
            {
                NotificationMessage.Error(divMessage, "Böyle bir kullanıcı bulunamadı!");
            }

        }

       
    }
}