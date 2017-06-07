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
    public partial class YaziOnaylama : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetBlogEntry();
        
        }

        public void GetBlogEntry()
        {
  
            List<BlogEntry> blogentry = GenericBS<BlogEntry>.GetAll();
            ControlBinder.BindRepeater(rptArticle, blogentry);
            
        }
     
      
        protected void rptArticle_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Article")
            {
                int blogentryId = Convert.ToInt32(e.CommandArgument);
                BlogEntry articleId = GenericBS<BlogEntry>.GetSingleItemByCriteria(x => x.Id == blogentryId);
                ltContext.Text = articleId.Content;
                ltTitle.Text = articleId.Title;

                ClientScriptManager scr = Page.ClientScript;
                string script = @"<script>$(document).ready(function(){
                                  $('#divArticle').css('display','block');
                                  $('#divArticle').removeClass('modal fade');
                                  $('#divArticle').addClass('modal fade in');
                                   $('#ContentPlaceHolder1_YaziOnaylama1_hdfArticleId').val('" + blogentryId + "');});</script>";


                scr.RegisterClientScriptBlock(Page.GetType(), "deneme", script);
            }
        }

        protected void rptArticle_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            BlogEntry blogentry = e.Item.DataItem as BlogEntry;
            Literal ltIsActive = e.Item.FindControl("ltIsActiveUser") as Literal;
            Image imgUserPhoto = e.Item.FindControl("imgUserPhoto") as Image;
            imgUserPhoto.ImageUrl = blogentry.User.Photo;
            ltIsActive.Text = blogentry.IsActive.Value ? "<span class='label label-success'>AKTİF</span>" : "<span class='label label-warning'>PASİF</span>";
        }




        protected void lnkDeleteUser_Click(object sender, EventArgs e)
        {
            int blogId = Convert.ToInt32(hfBlogId.Value);
            BlogEntry blogDelete = GenericBS<BlogEntry>.GetSingleItemByCriteria(x => x.Id == blogId);
            // silme işlemi
            //  GenericBS<AdminMenu>.Delete(adminMenuDelete);

            blogDelete.IsActive = false;
            GenericBS<BlogEntry>.Update(blogDelete);
            GetBlogEntry();
            NotificationMessage.Warning(divMessage, "Başarıyla Silindi");
        }

        protected void lnkApprove_Click(object sender, EventArgs e)
        {
            int blogId = Convert.ToInt32(hfBlogIdApprove.Value);
            BlogEntry blogApprove = GenericBS<BlogEntry>.GetSingleItemByCriteria(x => x.Id == blogId);
            // silme işlemi
            //  GenericBS<AdminMenu>.Delete(adminMenuDelete);

            blogApprove.IsActive = true;
            GenericBS<BlogEntry>.Update(blogApprove);
            GetBlogEntry();
            NotificationMessage.Success(divMessage, "Başarıyla Onaylandı");
        }
    }
}