using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class UFavoriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Convert.ToBoolean(Session["KLogin"]) == false)
            {
                Response.Redirect("~/Login.aspx?msg=Once Giris Yapmalisiniz...");
            }
            else
            {*/
            if (!IsPostBack)
            {
                try
                {
                    Page.Title = "Kullanıcı - Favorilerim";
                    lblfavorikitap.Text = "Favorilerinizde " + DBop.getFavorilerSayisi(Session["KID"].ToString()) +
                        " Adet Kitap Listelenmektedir.";
                    DataListFavoriler.DataSource = DBop.getFavoriler(Session["KID"].ToString());
                    DataListFavoriler.DataBind();
                }
                catch { }
            }
        }
    }
}