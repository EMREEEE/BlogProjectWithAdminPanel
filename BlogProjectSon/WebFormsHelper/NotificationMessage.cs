using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace WebFormsHelper
{
   public static class NotificationMessage
    {
       public static void Message(HtmlGenericControl hc,string message,CssStyleCollection styles,AttributeCollection attributes)
       {
           hc.InnerHtml = message;
           if (styles != null)
           {
               for (int i = 0; i < styles.Count; i++)
               {

               }
           }
       }
       public static void Success(HtmlGenericControl hc,string message)
       {
           hc.InnerHtml = message;
           hc.Attributes.Add("class","alert alert-success");
       }
       public static void Info(HtmlGenericControl hc, string message)
       {
           hc.InnerHtml = message;
           hc.Attributes.Add("class", "alert alert-info");
       }
       public static void Error(HtmlGenericControl hc, string message)
       {
           hc.InnerHtml = message;
           hc.Attributes.Add("class", "alert alert-danger");
       }
       public static void Warning(HtmlGenericControl hc, string message)
       {
           hc.InnerHtml = message;
           hc.Attributes.Add("class", "alert alert-warning");
       }
    }
}
