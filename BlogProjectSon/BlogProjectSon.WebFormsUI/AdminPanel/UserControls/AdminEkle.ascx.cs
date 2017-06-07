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
    public partial class AdminEkle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string refString = "";
            AdminUser adminUser = new AdminUser();
            adminUser.FullName = txtFullName.Value;
            adminUser.IsActive = true;
            adminUser.Password = Hashing.HashWithMD5(txtPassword.Value);
            adminUser.Email = txtEmail.Value;
            adminUser.UserName = txtUserName.Value;
            adminUser.Job = txtJob.Value;
            adminUser.MemberShipDate = DateTime.Now;

            string filePath = SavePhoto(ref refString);
            if (refString != "")
            {
                NotificationMessage.Error(divMessage, refString);
                return;
            }
            else
            {
                adminUser.Photo = filePath;
                GenericBS<AdminUser>.Insert(adminUser);
                NotificationMessage.Success(divMessage, "Yönetici Başarıyla Kaydedildi..");
                txtFullName.Value = "";
                txtJob.Value = "";
                txtEmail.Value = "";
                txtPassword.Value = "";
                txtUserName.Value = "";

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
                s = "Dosya seçilmedi";
                return "";
            }
        }
    }
}