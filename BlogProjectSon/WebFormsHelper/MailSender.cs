using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace WebFormsHelper
{
    public static class MailSender
    {
        //webcondig AppSetting kısmına yazılır adres ve şifre
        public static void SendMail(string to,string subject,string message)
        {
            string from = ConfigurationManager.AppSettings["MailAdress"];
            string password = ConfigurationManager.AppSettings["MailPassword"];
            MailMessage msg = new MailMessage(from,to);

            msg.Subject = subject;
            msg.Body = message;
            msg.IsBodyHtml = true;

            NetworkCredential cr = new NetworkCredential(from, password);

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = cr;
            smtp.EnableSsl = true;

            smtp.Send(msg);

           

        }
           
    }
}
