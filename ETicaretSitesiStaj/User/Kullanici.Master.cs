using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["ara"] = null;
                Session["KID"] = "5";
                Session["KLogin"] = true;
            }
        }

        protected void BtnUKitapAra_Click(object sender, EventArgs e)
        {
            Session["ara"] = txtKitapAra.Text;
            //Session["ddlara"] = DDLSearch.SelectedItem.Text;
            if (DDLUSearch.SelectedItem.Text == "Kitaplar")
            {
                Response.Redirect("~/User/UKitaplar.aspx?aranan=" + Session["ara"] + "");
            }
            if (DDLUSearch.SelectedItem.Text == "Yazarlar")
            {
                Response.Redirect("~/User/UYazarlar.aspx?aranan=" + Session["ara"] + "");
            }
            if (DDLUSearch.SelectedItem.Text == "Kategoriler")
            {
                Response.Redirect("~/User/UKategoriler.aspx?aranan=" + Session["ara"] + "");
            }
            if (DDLUSearch.SelectedItem.Text == "Yayınevleri")
            {
                Response.Redirect("~/User/UYayinevleri.aspx?aranan=" + Session["ara"] + "");
            }
        }
    }
}