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
    public partial class LeftMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //sayfa ilk defa açılıyor ise
            if (!Page.IsPostBack)
            {
                GetLeftMainAdminMenus();

            }



        }

        public void GetLeftMainAdminMenus()
        {
            //List<AdminMenu> adminMainMenu = GenericBS<AdminMenu>.GetListByCriteria(x => x.TopMenuId == null && x.IsActive == true);
            //ControlBinder.BindRepeater(rptAdminMenu, adminMainMenu);

            ControlBinder.BindRepeater
             (
                rptAdminMenu, GenericBS<AdminMenu>.GetListByCriteria(x => x.TopMenuId == null && x.IsActive.Value)
             );

        }

        protected void rptAdminMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            AdminMenu adminMainMenu = (e.Item.DataItem as AdminMenu);
            Repeater rptAdminSubMenu = e.Item.FindControl("rptAdminSubMenu") as Repeater;
            rptAdminSubMenu.DataSource = adminMainMenu.AdminMenu1.Where(x => x.IsActive == true).ToList();
            rptAdminSubMenu.DataBind();
            // ControlBinder.BindRepeater(rptAdminSubMenu, adminMainMenu.AdminMenu1.Where(x => x.IsActive == true).ToList());

            #region diğer yol
            //repeater içindeki repeater'a ulaşmak için
            //Repeater rptAdminSubMenu = e.Item.FindControl("rptAdminSubMenu") as Repeater;

            //ControlBinder.BindRepeater
            //    (
            //        rptAdminSubMenu,
            //        (e.Item.DataItem as AdminMenu).AdminMenu1.Where(x => x.IsActive.Value).ToList()
            //    );
            #endregion
        }
    }
}