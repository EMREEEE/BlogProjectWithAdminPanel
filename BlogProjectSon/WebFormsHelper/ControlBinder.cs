using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

//referances kısmına (assembly'den) system.web ekleyip
//buraya da using System.Web.UI.WebControls; kütüphanesi eklenmeli REPEATER 
//İÇİN
namespace WebFormsHelper
{
    public static class ControlBinder
    {
        public static void BindRepeater(Repeater rpt,object data)
        {
            rpt.DataSource = data;
            rpt.DataBind();
        }

        public static void BindDropdownList(DropDownList ddl,object data,string dataTextField,string dataValueField)
        {
            ddl.DataSource = data;
            ddl.DataTextField = dataTextField;
            ddl.DataValueField = dataValueField;
            ddl.DataBind();
        }
    }

   
}
