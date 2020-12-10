using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class UHesabim : System.Web.UI.Page
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
                    lblkullaniciadi.Text = KulBilgileri[0] + " " + KulBilgileri[1];

                    txtKulAdi.Text = KulBilgileri[0];
                    txtKulSoyad.Text = KulBilgileri[1];
                    txtKulMail.Text = KulBilgileri[2];
                    txtKulTel.Text = KulBilgileri[3];
                    txtkulAdres.Text = KulBilgileri[4];

                    btnBilgilerim.Font.Bold = true;
                    btnBilgilerim.Font.Underline = true;

                    lblsiparissayisi.Text = DBop.getKulSiparisSayisi(Session["KID"].ToString()).ToString();

                    DataListSiparisler.DataSource = DBop.getKullaniciSiparis(Session["KID"].ToString());
                    DataListSiparisler.DataBind();

                    MultiView1.ActiveViewIndex = 0;
                }
                catch { }
            }
        }

        protected void btnBilgilerim_Click(object sender, EventArgs e)
        {
            btnBilgilerim.Font.Bold = true;
            btnBilgilerim.Font.Underline = true;
            btnSiparisler.Font.Bold = false;
            btnSiparisler.Font.Underline = false;
            btnOdemeBilgileri.Font.Bold = false;
            btnOdemeBilgileri.Font.Underline = false;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnSiparisler_Click(object sender, EventArgs e)
        {
            btnBilgilerim.Font.Bold = false;
            btnBilgilerim.Font.Underline = false;
            btnSiparisler.Font.Bold = true;
            btnSiparisler.Font.Underline = true;
            btnOdemeBilgileri.Font.Bold = false;
            btnOdemeBilgileri.Font.Underline = false;
            MultiView1.ActiveViewIndex = 1;
        }
        protected void btnOdemeBilgileri_Click(object sender, EventArgs e)
        {
            btnBilgilerim.Font.Bold = false;
            btnBilgilerim.Font.Underline = false;
            btnSiparisler.Font.Bold = false;
            btnSiparisler.Font.Underline = false;
            btnOdemeBilgileri.Font.Bold = true;
            btnOdemeBilgileri.Font.Underline = true;
            MultiView1.ActiveViewIndex = 2;
        }
        protected void btnlisteyenile_Click(object sender, EventArgs e)
        {
            lblsiparissayisi.Text = DBop.getKulSiparisSayisi(Session["KID"].ToString()).ToString();
            DataListSiparisler.DataSource = DBop.getKullaniciSiparis(Session["KID"].ToString());
            DataListSiparisler.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }
    }
}