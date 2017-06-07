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
    public partial class AdminDuzenle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAdminUser();
        }

        private void GetAdminUser()
        {
            List<AdminUser> adminUser = GenericBS<AdminUser>.GetAll();
            ControlBinder.BindRepeater(rptAdminUser, adminUser);


        }

        protected void rptAdminUser_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            AdminUser adminUser = e.Item.DataItem as AdminUser;
            Literal ltIsActive = e.Item.FindControl("ltIsActiveAdminUser") as Literal;
            Image imgAdminPhoto = e.Item.FindControl("imgAdminPhoto") as Image;
            imgAdminPhoto.ImageUrl = adminUser.Photo;
            ltIsActive.Text = adminUser.IsActive.Value ? "<span class='label label-success'>AKTİF</span>" : "<span class='label label-warning'>PASİF</span>";
        }

        protected void lnkDeleteAdminUser_Click(object sender, EventArgs e)
        {
            int adminUserId = Convert.ToInt32(hfAdminUserId.Value);
            AdminUser adminUserDelete = GenericBS<AdminUser>.GetSingleItemByCriteria(x => x.Id == adminUserId);
            // silme işlemi
            //  GenericBS<AdminMenu>.Delete(adminMenuDelete);

            adminUserDelete.IsActive = false;
            GenericBS<AdminUser>.Update(adminUserDelete);
            GetAdminUser();
            NotificationMessage.Warning(divMessage, "Başarıyla Silindi");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string refString = "";
            int adminUserId = Convert.ToInt32(hfUpdateAdminId.Value);
            AdminUser adminUserToUpdate = GenericBS<AdminUser>.GetSingleItemByCriteria(x => x.Id == adminUserId);
            adminUserToUpdate.FullName = txtAdminFullNameUpdate.Text;
            adminUserToUpdate.UserName = txtAdminUsernameUpdate.Text;
            adminUserToUpdate.Password = txtAdminPasswordUpdate.Text;
            adminUserToUpdate.Email = txtAdminEmailUpdate.Text;
            adminUserToUpdate.Job = txtAdminJobUpdate.Text;

            string filePath = SavePhoto(ref refString);
            if (refString != "")
            {
                NotificationMessage.Error(divMessage, refString);
                return;
            }
            else
            {
 
                adminUserToUpdate.Photo = filePath;
                GenericBS<AdminUser>.Update(adminUserToUpdate);
                GetAdminUser();
    

            }

         


            //kaydet butonuna basınçda admin menü eklerken aynı anda left menüdede gözükmesi için
            //(Page.Master.FindControl("LeftMenu") as LeftMenu).GetLeftMainAdminMenus();

            NotificationMessage.Success(divMessage, "Yeni Menü Başarı İle Güncellendi");
          

        }

        protected void rptAdminUser_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                int adminUserId = Convert.ToInt32(e.CommandArgument);
                AdminUser adminUserToUpdate = GenericBS<AdminUser>.GetSingleItemByCriteria(x => x.Id == adminUserId);
               
                imgAdminPhotoUpdate.ImageUrl = adminUserToUpdate.Photo;
                txtAdminFullNameUpdate.Text = adminUserToUpdate.FullName;
                txtAdminUsernameUpdate.Text = adminUserToUpdate.UserName;
                //txtAdminPasswordUpdate.Text = adminUserToUpdate.Password;
                txtAdminEmailUpdate.Text = adminUserToUpdate.Email;
                txtAdminJobUpdate.Text = adminUserToUpdate.Job;
                 
                 


                ClientScriptManager scr = Page.ClientScript;
                string script = @"<script>$(document).ready(function(){
                                  $('#divUpdateAdmin').css('display','block');
                                  $('#divUpdateAdmin').removeClass('modal fade');
                                  $('#divUpdateAdmin').addClass('modal fade in');
                                   $('#ContentPlaceHolder1_AdminDuzenle1_hfUpdateAdminId').val('" + adminUserId + "');});</script>";


                scr.RegisterClientScriptBlock(Page.GetType(), "deneme", script);
            }


        }

        private string SavePhoto(ref string s)
        {

            HttpFileCollection hfc = Request.Files;
            if (hfc.Count > 0)
            {
                HttpPostedFile hpf = hfc[0];
                //if (hpf.ContentLength > 307200) //300 kb
                //{
                //    s = "Boyut Fazla";
                //}
               
                if (hpf.ContentLength > 1024 * 1024)  //1mb
                {
                    s = "Boyut Fazla";
                }
                if (!hpf.ContentType.Contains("image"))  //hangi dosya olacağına MIME type ile karşılaştırısın
                {
                    s = "Dosya tipi uygun değil";
                }
                string isim = Guid.NewGuid().ToString();
                string filePath = "/img/AdminUserPhotos/" + isim + hpf.FileName;
                hpf.SaveAs(Server.MapPath(filePath));
                return filePath;
            }
            else
            {
                s = "Yeni Dosya seç";
                return "";
            }
        }
    }
}