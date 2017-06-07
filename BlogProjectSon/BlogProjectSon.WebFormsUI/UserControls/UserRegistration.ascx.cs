using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI.UserControls
{
    public partial class UserRegistration : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string refString = "";

            User user = new User();
            user.Email = txtEmail.Value;
            user.FullName = txtFullName.Value;
            user.Password = Hashing.HashWithMD5(txtPassword.Value);
            user.UserName = txtUserName.Value;
            user.IsActive = false;
            user.IsMailConfirmed = false;
            user.ActivationCode = Guid.NewGuid();

            string filePath = FileUploader.UploadSingleFile(Request.Files, ref refString, 1024 * 1024, new string[] { "image/png", "image/jpg", "image/jpeg", "application/pdf" }, "/img/UserPhotos/");
            if (refString != "")
            {
                NotificationMessage.Error(divMessage, refString);
                return;
            }
            else
            {
                user.Photo = filePath;
                GenericBS<User>.Insert(user);
                string mailMessage = string.Format("Sayın <b>{0}</b>.Sistemimize hoşgeldiniz.Hesabınızın aktifleşebilmesi için lütfen aşağıdaki linke tıklayınız.<br/> <a href='http://localhost:57513/UserActivation.aspx?Code=" + user.ActivationCode + "'><b>http://localhost:57513/UserActivation.aspx?Code=" + user.ActivationCode + "</b></a>", user.FullName);
                MailSender.SendMail(user.Email, "Blog Aktivasyon", mailMessage);
                NotificationMessage.Success(divMessage, "Kullanıcı kaydı başarılı.Mail aktivasyonunu yapınız.");
                
            }
        }
 
 
    }
}