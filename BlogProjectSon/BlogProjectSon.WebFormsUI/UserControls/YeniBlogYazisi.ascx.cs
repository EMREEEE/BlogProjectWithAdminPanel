using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using BlogProjectSon.WebFormsUI.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI.UserControls
{
    public partial class YeniBlogYazisi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategories();
            }
        }
        private void GetCategories()
        {
            ControlBinder.BindDropdownList(ddlCategory, GenericBS<Category>.GetListByCriteria(x => x.IsActive.Value), "CategoryName", "Id");
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {

            BlogEntry be = new BlogEntry();
            be.CategoryId = Convert.ToInt32(ddlCategory.SelectedValue);
            be.Content = txtContent.Value;
            be.Date = DateTime.Now;
            be.IsActive = false;
            be.Title = txtTitle.Value;
            be.UserId = SessionManager.ActiveUser.Id;
            be.Abstract = txtAbstract.Value;
                
            GenericBS<BlogEntry>.Insert(be);

            
            HttpFileCollection hfc = Request.Files;
            if (hfc.Count > 0)
            {
                string isim = Guid.NewGuid().ToString();
                for (int i = 0; i < hfc.Count; i++)
                {
                    HttpPostedFile hpf = hfc[i];
                    string filePath = "~/img/BlogPhotos/" + isim + hpf.FileName;
                    hpf.SaveAs(Server.MapPath(filePath));
                    BlogEntryPhoto ph = new BlogEntryPhoto();
                    ph.BlogEntryId = be.Id;
                    ph.PhotoPath = filePath;
                    GenericBS<BlogEntryPhoto>.Insert(ph);

                }
            }
                     NotificationMessage.Success(divMessage,"Kayıt Başarılı..");
                     txtTitle.Value = "";
                     txtContent.Value = "";

            }
            catch (Exception)
            {
                
                NotificationMessage.Error(divMessage,"Kayıt Başarısız..");
            }
            

 
        }
    }
}