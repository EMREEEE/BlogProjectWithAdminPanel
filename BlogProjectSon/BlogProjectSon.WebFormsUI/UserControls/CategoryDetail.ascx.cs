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
    public partial class CategoryDetail : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int categoryId;
                if(int.TryParse(Request.QueryString["Id"],out categoryId))
                {
                    GetCategoryDetail(categoryId);
                }
                else
                {
                    Response.Redirect("/Default.aspx");
                }
               
              
            }
        }

        private void GetCategoryDetail(int categoryId)
        {
          List<BlogEntry> entry =  GenericBS<BlogEntry>.GetListByCriteria(x => x.CategoryId == categoryId && x.IsActive.Value);
          if (entry.Count != 0)
          {
              ControlBinder.BindRepeater(rptBlogEntries, entry);
          }
          else
          {
              NotificationMessage.Error(divMessage, "Bu Kategoride henüz bilgi yok.!!");
          }
            
        }

        protected void rptBlogEntries_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            BlogEntry entry = e.Item.DataItem as BlogEntry;
            Repeater rptBlogImage = e.Item.FindControl("rptBlogImage") as Repeater;
            ControlBinder.BindRepeater(rptBlogImage, entry.BlogEntryPhotoes.ToList());

        }
    }
}