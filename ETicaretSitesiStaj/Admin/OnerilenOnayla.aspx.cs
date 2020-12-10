using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.Admin
{
    public partial class OnerilenOnayla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Convert.ToBoolean(Session["ALogin"]) == false)
            {
                Response.Redirect("~/AdminLogin.aspx?msg=Once Giris Yapmalisiniz...");
            }
            else
            {*/
            if (!IsPostBack)
            {
                try
                {
                    string kitid = Request.QueryString["Kitid"].ToString();
                    string[] onerilenler = DBop.OnerilenOku(kitid);
                    txtSatkitapid.Text = onerilenler[0];
                    txtsatkitapadi.Text = onerilenler[1];
                    txtsatkitapaciklama.Text = onerilenler[2];
                    txtkitapsatfiyat.Text = onerilenler[3];
                    txtkitapsatresimyolu.Text = onerilenler[4];
                    resim.Src = onerilenler[4];
                    txtkitapsatkategori.Text = onerilenler[5];
                    txtkitapsatyazar.Text = onerilenler[6];
                    txtkitapsatyayınev.Text = onerilenler[7];
                }
                catch { }
                //}
            }
        }

        protected void btnAkitaponayla_Click(object sender, EventArgs e)
        {
            DBop.kategoriekle(txtkitapsatkategori.Text);
            DBop.yazarekle(txtkitapsatyazar.Text);
            DBop.yayineviekle(txtkitapsatyayınev.Text);
            float fiyat = (float)Convert.ToDouble(txtkitapsatfiyat.Text);
            string katid = DBop.getkategoriid(txtkitapsatkategori.Text).ToString();
            string yazid = DBop.getyazarid(txtkitapsatyazar.Text).ToString();
            string yayid = DBop.getyayineviid(txtkitapsatyayınev.Text).ToString();

            DBop.yeniKitapekle(txtsatkitapadi.Text, txtsatkitapaciklama.Text, fiyat, txtkitapsatresimyolu.Text, katid, yazid, yayid);
            DBop.onerilenSİl(Convert.ToInt32(txtSatkitapid.Text));
            Response.Redirect("AAnasayfa.aspx");
        }
    }
}