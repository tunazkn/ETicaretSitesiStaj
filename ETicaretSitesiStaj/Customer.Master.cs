using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj
{
    public partial class Customer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Kid"] = "";
            Session["KLogin"] = false;
            if (!IsPostBack)
            {
                Session["ara"] = null;
            }
        }

        protected void BtnKitapAra_Click(object sender, EventArgs e)
        {
            Session["ara"] = txtKitapAra.Text;
            //Session["ddlara"] = DDLSearch.SelectedItem.Text;
            if (DDLSearch.SelectedItem.Text == "Kitaplar")
            {
                Response.Redirect("~/Kitaplar.aspx?aranan=" + Session["ara"]+ "");
            }
            if (DDLSearch.SelectedItem.Text == "Yazarlar")
            {
                Response.Redirect("~/Yazarlar.aspx?aranan=" + Session["ara"] + "");
            }
            if (DDLSearch.SelectedItem.Text == "Kategoriler")
            {
                Response.Redirect("~/Kategoriler.aspx?aranan=" + Session["ara"] + "");
            }
            if (DDLSearch.SelectedItem.Text == "Yayınevleri")
            {
                Response.Redirect("~/Yayinevleri.aspx?aranan=" + Session["ara"] + "");
            }
        }
    }
}