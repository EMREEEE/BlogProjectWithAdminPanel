using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using BlogProjectSon.WebFormsUI.App_Code;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI.AdminPanel
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = txtUsername.Text;
            string password = Hashing.HashWithMD5(txtPassword.Text);
             
           

           AdminUser user = GenericBS<AdminUser>.GetSingleItemByCriteria(x => x.UserName == userName && x.Password == password);
           SessionManager.ActiveAdmin = user;

            if (user != null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                ltMessage.Text = "<div class='alert alert-danger'>Böyle bir kullanıcı bulunamadı..! </div>";
            }
                        
        }
    }
}