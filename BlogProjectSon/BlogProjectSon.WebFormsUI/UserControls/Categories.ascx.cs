using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;

namespace BlogProjectSon.WebFormsUI.UserControls
{
    public partial class Categories : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCategories();
        }

        private void GetCategories()
        {
          
          List<Category> categories =  GenericBS<Category>.GetListByCriteria<int>(c => c.IsActive.Value, c => c.OrderNumber.Value, BlogProjectSon.MODEL.SortDirection.Ascending);

          rptCategories.DataSource = categories;
          rptCategories.DataBind();

        }

        //1.YOL

        //protected void rptCategories_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    Category category = e.Item.DataItem as Category;
        //    Literal ltCategoryName = e.Item.FindControl("ltCategoryName") as Literal;
        //    ltCategoryName.Text = category.CategoryName;
        //}
    }
}