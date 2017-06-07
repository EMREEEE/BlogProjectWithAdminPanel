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
    public partial class BlogDetay : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int blogEntryId;
                if (int.TryParse(Request.QueryString["Id"],out blogEntryId))
                {
                    GetBlogEntryDetails(blogEntryId);
                    
                }
                else
                {
                    Response.Redirect("/Default.aspx");
                }
                 
               
            }
        }

        private void GetBlogEntryDetails(int blogEntryId)
        {
            BlogEntry entry = GenericBS<BlogEntry>.GetSingleItemByCriteria(x => x.Id == blogEntryId && x.IsActive.Value);

            if (entry != null) 
            {
                ltContent.Text = entry.Content;
                ltTitle.Text = entry.Title;
                ltCategory.Text = entry.Category.CategoryName;
                ltUser.Text = entry.User.FullName;
                ltDateDay.Text = entry.Date.Value.Day.ToString();
                ltDateMonth.Text = ((MonthName)entry.Date.Value.Month).ToString();

                ControlBinder.BindRepeater(rptBlogEntryPhotos, entry.BlogEntryPhotoes.ToList());
            }
            else
            {
                Response.Redirect("/Default.aspx");
            }

          
        }

        protected void btnComment_Click(object sender, EventArgs e)
        {
            int blogentryId =  Convert.ToInt32(Request.QueryString["Id"]);

            Comment comment = new Comment();
            comment.CommentContent = txtComment.Value;
            comment.Date = DateTime.Now;
            comment.BlogEntryId = blogentryId;
            comment.CommentUser.FullName = txtFullName.Value;
            comment.CommentUser.Email = txtEmail.Value;
           
            GenericBS<Comment>.Insert(comment);
            //----------------------------------------------
            //AdminMenu adminMenu = new AdminMenu();
            //adminMenu.IsActive = true;
            //adminMenu.Link = txtLink.Text;
            //adminMenu.MenuIcon = "fa fa-" + ddlMenuIcon.SelectedItem.ToString();
            //adminMenu.Name = txtMenuName.Text;

            //if (!chkSelectTopMenu.Checked)
            //    adminMenu.TopMenuId = null;
            //else
            //    adminMenu.TopMenuId = Convert.ToInt32(ddlTopMenu.SelectedValue);

            //GenericBS<AdminMenu>.Insert(adminMenu);
            //GetAdminMenus();


            ////kaydet butonuna basınçda admin menü eklerken aynı anda left menüdede gözükmesi için
            //(Page.Master.FindControl("LeftMenu") as LeftMenu).GetLeftMainAdminMenus();

            //NotificationMessage.Success(divMessage, "Yeni Menü Başarı İle Kaydedildi");
        }

      
    }
}