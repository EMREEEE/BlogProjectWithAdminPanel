using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLastBlogEnrties();
            }
        }

        private void GetLastBlogEnrties()
        {
          
         List<BlogEntry> entries =   GenericBS<BlogEntry>.GetListByCriteria<DateTime>
                (
                x=>x.IsActive.Value,
                x=>x.Date.Value,
                MODEL.SortDirection.Descending
                ).Take(3).ToList();

         ControlBinder.BindRepeater(rptBlogEntries, entries);
        }

        protected void rptBlogEntries_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            BlogEntry entry = e.Item.DataItem as BlogEntry;
            Repeater rptBlogImage = e.Item.FindControl("rptBlogImage") as Repeater;
            ControlBinder.BindRepeater(rptBlogImage, entry.BlogEntryPhotoes.ToList());

        }
    }
}