using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProjectSon.BLL;
using BlogProjectSon.MODEL;
using WebFormsHelper;

namespace BlogProjectSon.WebFormsUI.AdminPanel.UserControls
{
    public partial class AdminMenuYonetim : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAdminMenus();
                GetMenuIcons();
                
               
            }
        }

        private void GetMenuIcons()
        {

            ControlBinder.BindDropdownList(ddlMenuIcon, Enum.GetNames(typeof(FontAwesomeIcons)), null, null);
            ControlBinder.BindDropdownList(ddlMenuIconUpdate, Enum.GetNames(typeof(FontAwesomeIcons)), null, null);
      
        }

        private void GetAdminMenus()
        {
            List<AdminMenu> adminMenus = GenericBS<AdminMenu>.GetAll();
           // List<AdminMenu> adminMenus = GenericBS<AdminMenu>.GetListByCriteria(x=>x.IsActive == true);
            ControlBinder.BindRepeater(rptAdminMenus,adminMenus );
            ControlBinder.BindDropdownList(ddlTopMenu, adminMenus, "Name", "Id");
            ControlBinder.BindDropdownList(ddlTopMenuUpdate, adminMenus, "Name", "Id");
        }

        protected void rptAdminMenus_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            AdminMenu adminMenu = e.Item.DataItem as AdminMenu;
            Literal ltTopMenuName = e.Item.FindControl("ltTopMenuName") as Literal;
            Literal ltIsActive = e.Item.FindControl("ltIsActive") as Literal;

            ltTopMenuName.Text = adminMenu.AdminMenu2 != null ? adminMenu.AdminMenu2.Name : "ANA MENÜ";
            ltIsActive.Text = adminMenu.IsActive.Value ? "<span class='label label-success'>AKTİF</span>" : "<span class='label label-warning'>PASİF</span>";


        }

        protected void btnDeleteAdminMenu_Click(object sender, EventArgs e)
        {
            int adminMenuId = Convert.ToInt32(hfAdminMenuId.Value);
            AdminMenu adminMenuDelete = GenericBS<AdminMenu>.GetSingleItemByCriteria(x => x.Id == adminMenuId);
            // silme işlemi
            //  GenericBS<AdminMenu>.Delete(adminMenuDelete);

            adminMenuDelete.IsActive = false;
            GenericBS<AdminMenu>.Update(adminMenuDelete);

            NotificationMessage.Warning(divMessage, "Başarıyla Silindi");
            GetAdminMenus();
            (Page.Master.FindControl("LeftMenu") as LeftMenu).GetLeftMainAdminMenus();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            AdminMenu adminMenu = new AdminMenu();
            adminMenu.IsActive = true;
            adminMenu.Link = txtLink.Text;
            adminMenu.MenuIcon = "fa fa-"+ddlMenuIcon.SelectedItem.ToString();
            adminMenu.Name = txtMenuName.Text;

            if (!chkSelectTopMenu.Checked)
                adminMenu.TopMenuId = null;
            else
                adminMenu.TopMenuId = Convert.ToInt32(ddlTopMenu.SelectedValue);

            GenericBS<AdminMenu>.Insert(adminMenu);
            GetAdminMenus();
            

            //kaydet butonuna basınçda admin menü eklerken aynı anda left menüdede gözükmesi için
            (Page.Master.FindControl("LeftMenu") as LeftMenu).GetLeftMainAdminMenus();

            NotificationMessage.Success(divMessage,"Yeni Menü Başarı İle Kaydedildi");


        }
        
        //(LinkButton) Edit butonu için,tıklayınca düzenmele kısmı gelecek
        //Repeter içindeki eleman sayfayı post ediyorsa çalışır (OnItemCommand argümanıyla) LinkButton için
        protected void rptAdminMenus_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                int adminMenuId = Convert.ToInt32(e.CommandArgument);
                AdminMenu adminMenuToUpdate = GenericBS<AdminMenu>.GetSingleItemByCriteria(x => x.Id == adminMenuId);
                txtLinkUpdate.Text = adminMenuToUpdate.Link;
                txtNameUpdate.Text = adminMenuToUpdate.Name;
                ddlMenuIconUpdate.SelectedItem.Text = adminMenuToUpdate.MenuIcon;
                if (adminMenuToUpdate.TopMenuId != null)
                {
                    chkTopMenuUpdate.Checked = true;
                    divTopMenuUpdate.Style.Add("display", "block");
                    ddlTopMenuUpdate.SelectedValue = adminMenuToUpdate.TopMenuId.Value.ToString();
                }
                else
                {
                    chkTopMenuUpdate.Checked = false;
                    divTopMenuUpdate.Style.Add("display", "none");
                }
                  

                ClientScriptManager scr = Page.ClientScript;
                string script = @"<script>$(document).ready(function(){
                                  $('#divUpdateAdminMenu').css('display','block');
                                  $('#divUpdateAdminMenu').removeClass('modal fade');
                                  $('#divUpdateAdminMenu').addClass('modal fade in');
                                   $('#ContentPlaceHolder1_AdminMenuYonetim1_hfUpdateAdminMenuId').val('"+adminMenuId+"');});</script>";
                             
                               
                scr.RegisterClientScriptBlock(Page.GetType(), "deneme",  script);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int adminMenuId = Convert.ToInt32(hfUpdateAdminMenuId.Value);
            AdminMenu adminMenuToUpdate = GenericBS<AdminMenu>.GetSingleItemByCriteria(x => x.Id == adminMenuId);
            adminMenuToUpdate.Name = txtNameUpdate.Text;
            adminMenuToUpdate.Link = txtLinkUpdate.Text;
            adminMenuToUpdate.MenuIcon = "fa fa-"+ddlMenuIconUpdate.SelectedItem.ToString();
            //top menuye bak
            if (!chkTopMenuUpdate.Checked)
                adminMenuToUpdate.TopMenuId = null;
            else
                adminMenuToUpdate.TopMenuId = Convert.ToInt32(ddlTopMenuUpdate.SelectedValue);

            GenericBS<AdminMenu>.Update(adminMenuToUpdate);
            GetAdminMenus();


            //kaydet butonuna basınçda admin menü eklerken aynı anda left menüdede gözükmesi için
            (Page.Master.FindControl("LeftMenu") as LeftMenu).GetLeftMainAdminMenus();

            NotificationMessage.Success(divMessage, "Yeni Menü Başarı İle Güncellendi");
	 
        
        }
 

        

         
    }
}