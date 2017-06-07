using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI.AdminPanel.UserControls
{
    public partial class KullaniciYonetimi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetUser();
           
        }
        private void GetUser()
        {
            List<User> user = GenericBS<User>.GetListByCriteria(x=>x.IsMailConfirmed.Value);
            ControlBinder.BindRepeater(rptUser, user);


        }
 
     

        protected void rptUser_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            User user = e.Item.DataItem as User;
            Literal ltIsActive = e.Item.FindControl("ltIsActiveUser") as Literal;
            Image imgUserPhoto = e.Item.FindControl("imgUserPhoto") as Image;
            imgUserPhoto.ImageUrl = user.Photo;
            ltIsActive.Text = user.IsActive.Value ? "<span class='label label-success'>AKTİF</span>" : "<span class='label label-warning'>PASİF</span>";
        }

        protected void lnkDeleteUser_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(hfUserId.Value);
            User UserDelete = GenericBS<User>.GetSingleItemByCriteria(x => x.Id == userId);
            // silme işlemi
            //  GenericBS<AdminMenu>.Delete(adminMenuDelete);

            UserDelete.IsActive = false;
            GenericBS<User>.Update(UserDelete);
            GetUser();
            NotificationMessage.Warning(divMessage, "Başarıyla Silindi");
        }

        protected void lnkApprove_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(hfUserIdApprove.Value);
            User UserDelete = GenericBS<User>.GetSingleItemByCriteria(x => x.Id == userId);
            // silme işlemi
            //  GenericBS<AdminMenu>.Delete(adminMenuDelete);

            UserDelete.IsActive = true;
            GenericBS<User>.Update(UserDelete);
            GetUser();
            NotificationMessage.Success(divMessage, "Başarıyla Onaylandı");
        }

       
    }
}