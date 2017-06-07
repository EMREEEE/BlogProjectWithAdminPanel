using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProjectSon.WebFormsUI.AdminPanel.UserControls
{
    public partial class DashBoard : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSummary();
                GetArticle();
            }
        }
        private void GetSummary()
        {
            //mail confirmed true olacak isActive false olacak
           List<User> users =  GenericBS<User>.GetListByCriteria(x => x.IsMailConfirmed.Value && !x.IsActive.Value);
           ltCountOfUnConfirmedUsers.Text = users.Count.ToString();
               
        }

        private void GetArticle()
        {
            List<BlogEntry> article = GenericBS<BlogEntry>.GetListByCriteria(x => x.IsActive == false);
            ltCountOfUnConfirmedArticle.Text = article.Count.ToString();
        }
    }
}