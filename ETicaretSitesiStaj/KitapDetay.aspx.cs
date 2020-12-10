using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj
{
    public partial class KitapDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["KLogin"] = false;
            string kitid = Request.QueryString["Kitapid"].ToString();
            Page.Title = "Kitap Detayları | " + DBop.getKitapAd(kitid);

            DataListyolu.DataSource = DBop.getKitapDetay(kitid);
            DataListyolu.DataBind();

            DataListKitapResim.DataSource = DBop.getKitapDetay(kitid);
            DataListKitapResim.DataBind();

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid);
            DataListKitapDetay.DataBind();

            DataListYorumlar.DataSource = DBop.getYorumlar(kitid);
            DataListYorumlar.DataBind();

            if (DBop.getYorumSayisi(kitid) < 1)
            {
                lblyorumsayisi.Visible = true;
                lblyorumsayisi.ForeColor = System.Drawing.Color.Black;
                lblyorumsayisi.Text = "Yorum yok..";
            }
            else
                lblyorumsayisi.Visible = false;
        }
    }
}