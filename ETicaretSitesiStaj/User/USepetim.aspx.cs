using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class USepetim : System.Web.UI.Page
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
                    string[] KulBilgileri = DBop.KullaniciBilgileri(Session["KID"].ToString());
                    /*
                    txtKulAdi.Text = KulBilgileri[0];
                    txtKulSoyad.Text = KulBilgileri[1];
                    txtKulMail.Text = KulBilgileri[2];
                    txtKulTel.Text = KulBilgileri[3];
                    txtkulAdres.Text = KulBilgileri[4];

                    btnBilgilerim.Font.Bold = true;
                    btnBilgilerim.Font.Underline = true;*/

                    
                    lblsepetsayisi.Text = "(" + DBop.getKulSepetSayisi(Session["KID"].ToString()).ToString() + " ürün)";
                    lblozeturunsayisi.Text=  DBop.getKulSepetSayisi(Session["KID"].ToString()).ToString() + " ürün";
                    lblSiparisToplamtutar.Text = DBop.getKulSepetToplamF(Session["KID"].ToString()).ToString("0.##") + " TL";
                    DataListSepet.DataSource = DBop.getKullaniciSepet(Session["KID"].ToString());
                    DataListSepet.DataBind();
                }
                catch { }
            }
        }
    }
}
