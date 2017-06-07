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
    public partial class UserActivation : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Guid code = Guid.Parse(Request.QueryString["Code"]);
                User user = GenericBS<User>.GetSingleItemByCriteria(x => x.ActivationCode == code);

                if (user != null)
                {
                    user.IsMailConfirmed = true;
                    GenericBS<User>.Update(user);
                    NotificationMessage.Error(divMessage,"Aktivasyon Başarılı.Yönetici onayından sonra giriş yapabilirsiniz.");
        
                }
                else
                {
                    NotificationMessage.Error(divMessage, "Aktivasyon Başarısız.Lütfen maildeki linke tıklayın.");
                }
            }
        }
    }
}