using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class UKitapSatinal1 : System.Web.UI.Page
    {
        public Color activecolor = Color.FromArgb(1, 208, 211, 214);
        public Color pasifcolor = Color.FromArgb(1, 248, 249, 250);
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
                    Session["KID"] = "5";
                    string kitid = Request.QueryString["Kitapid"].ToString();
                    Page.Title = "Kullanıcı - Kitap Satın Al | " + DBop.getKitapAd(kitid);; 


                    DataListsoru.DataSource = DBop.getKitapDetay(kitid);
                    DataListsoru.DataBind();

                    DataListKitapResimonay.DataSource = DBop.getKitapDetay(kitid);
                    DataListKitapResimonay.DataBind();

                    DataListKitapDetayonay.DataSource = DBop.getKitapDetay(kitid);
                    DataListKitapDetayonay.DataBind();

                    string[] kulbil = DBop.KullaniciBilgileri(Session["KID"].ToString());
                    txtKulAdi.Text = kulbil[0];
                    txtKulSoyad.Text = kulbil[1];
                    txtKulMail.Text = kulbil[2];
                    txtKulTel.Text = kulbil[3];
                    txtkulAdres.Text = kulbil[4];

                    btnKitap.BackColor = activecolor;
                    btnKitap.Enabled = false;
                    btnKullanici.BackColor = pasifcolor;
                    btnKullanici.Enabled = true;
                    btnOdeme.BackColor = pasifcolor;
                    btnOdeme.Enabled = true;
                    btnOnayla.BackColor = pasifcolor;
                    btnOnayla.Enabled = true;
                    btnSiparis.Enabled = false;
                    btnGeri.Enabled = false;
                    btnBitir.Enabled = false;

                    MultiView1.ActiveViewIndex = 0;
                }
                catch { }
            }
            //}
        }

        protected void btnKitap_Click(object sender, EventArgs e)
        {
            btnKitap.BackColor = activecolor;
            btnKitap.Enabled = false;
            btnKullanici.BackColor = pasifcolor;
            btnKullanici.Enabled = true;
            btnOdeme.BackColor = pasifcolor;
            btnOdeme.Enabled = true;
            btnOnayla.BackColor = pasifcolor;
            btnOnayla.Enabled = true;
            btnGeri.Enabled = false;
            btnileri.Visible = true;
            btnBitir.Enabled = false;
            btnOnaylaislem.Visible = false;

            btniptal.Visible = true;
            btnGeri.Visible = true;

            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnKullanici_Click(object sender, EventArgs e)
        {
            btnKitap.BackColor = pasifcolor;
            btnKitap.Enabled = true;
            btnKullanici.BackColor = activecolor;
            btnKullanici.Enabled = false;
            btnOdeme.BackColor = pasifcolor;
            btnOdeme.Enabled = true;
            btnOnayla.BackColor = pasifcolor;
            btnOnayla.Enabled = true;
            btnGeri.Enabled = true;
            btnileri.Visible = true;
            btnBitir.Enabled = false;
            btnOnaylaislem.Visible = false;

            btniptal.Visible = true;
            btnGeri.Visible = true;

            MultiView1.ActiveViewIndex = 1;
        }
        protected void btnOdeme_Click(object sender, EventArgs e)
        {
            btnKitap.BackColor = pasifcolor;
            btnKitap.Enabled = true;
            btnKullanici.BackColor = pasifcolor;
            btnKullanici.Enabled = true;
            btnOdeme.BackColor = activecolor;
            btnOdeme.Enabled = false;
            btnOnayla.BackColor = pasifcolor;
            btnOnayla.Enabled = true;
            btnGeri.Enabled = true;
            btnileri.Visible = true;
            btnBitir.Enabled = false;
            btnOnaylaislem.Visible = false;

            btniptal.Visible = true;
            btnGeri.Visible = true;

            MultiView1.ActiveViewIndex = 2;
        }
        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            btnKitap.BackColor = pasifcolor;
            btnKitap.Enabled = true;
            btnKullanici.BackColor = pasifcolor;
            btnKullanici.Enabled = true;
            btnOdeme.BackColor = pasifcolor;
            btnOdeme.Enabled = true;
            btnOnayla.BackColor = activecolor;
            btnOnayla.Enabled = false;
            btnGeri.Enabled = true;
            btnileri.Visible = false;
            btnBitir.Enabled = false;
            btnOnaylaislem.Visible = true;

            btniptal.Visible = true;
            btnGeri.Visible = true;

            MultiView1.ActiveViewIndex = 3;
        }
        protected void btnSiparis_Click(object sender, EventArgs e)
        {
            btnKitap.BackColor = pasifcolor;
            btnKitap.Enabled = true;
            btnKullanici.BackColor = pasifcolor;
            btnKullanici.Enabled = true;
            btnOdeme.BackColor = pasifcolor;
            btnOdeme.Enabled = true;
            btnOnayla.BackColor = pasifcolor;
            btnOnayla.Enabled = true;
            btnSiparis.BackColor = activecolor;
            btnSiparis.Enabled = false;
            btnGeri.Enabled = true;
            btnileri.Visible = false;
            btnBitir.Enabled = true;
            btnOnaylaislem.Visible = false;

            btniptal.Visible = false;
            btnGeri.Visible = false;
            MultiView1.ActiveViewIndex = 4;
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            string viewiid = MultiView1.GetActiveView().ID;
            int index;
            if (viewiid == "ViewKullanici1")
            {
                index = 1;
                btnKitap.BackColor = activecolor;
                btnKitap.Enabled = false;
                btnKullanici.BackColor = pasifcolor;
                btnKullanici.Enabled = true;
                btnOdeme.BackColor = pasifcolor;
                btnOdeme.Enabled = true;
                btnOnayla.BackColor = pasifcolor;
                btnOnayla.Enabled = true;
                btnGeri.Enabled = false;
                btnileri.Visible = true;
                btnBitir.Enabled = false;
                btnOnaylaislem.Visible = false;
            }
            else if (viewiid == "ViewOdeme2")
            {
                index = 2;
                btnKitap.BackColor = pasifcolor;
                btnKitap.Enabled = true;
                btnKullanici.BackColor = activecolor;
                btnKullanici.Enabled = false;
                btnOdeme.BackColor = pasifcolor;
                btnOdeme.Enabled = true;
                btnOnayla.BackColor = pasifcolor;
                btnOnayla.Enabled = true;
                btnGeri.Enabled = true;
                btnileri.Visible = true;
                btnBitir.Enabled = false;
                btnOnaylaislem.Visible = false;
            }
            else if (viewiid == "ViewOnayla3")
            {
                index = 3;
                btnKitap.BackColor = pasifcolor;
                btnKitap.Enabled = true;
                btnKullanici.BackColor = pasifcolor;
                btnKullanici.Enabled = true;
                btnOdeme.BackColor = activecolor;
                btnOdeme.Enabled = false;
                btnOnayla.BackColor = pasifcolor;
                btnOnayla.Enabled = true;
                btnGeri.Enabled = true;
                btnileri.Visible = true;
                btnBitir.Enabled = false;
                btnOnaylaislem.Visible = false;
            }
            else if (viewiid == "ViewSiparis4")
            {
                index = 4;
                btnKitap.BackColor = pasifcolor;
                btnKitap.Enabled = true;
                btnKullanici.BackColor = pasifcolor;
                btnKullanici.Enabled = true;
                btnOdeme.BackColor = pasifcolor;
                btnOdeme.Enabled = true;
                btnOnayla.BackColor = activecolor;
                btnOnayla.Enabled = false;
                btnGeri.Enabled = true;
                btnileri.Visible = true;
                btnBitir.Enabled = false;
                btnOnaylaislem.Visible = false;
            }
            else
            {
                index = 0;
                btnKitap.BackColor = activecolor;
                btnKitap.Enabled = false;
                btnKullanici.BackColor = pasifcolor;
                btnKullanici.Enabled = true;
                btnOdeme.BackColor = pasifcolor;
                btnOdeme.Enabled = true;
                btnOnayla.BackColor = pasifcolor;
                btnOnayla.Enabled = true;
                btnGeri.Enabled = false;
                btnGeri.Enabled = false;
                btnileri.Visible = true;
                btnOnaylaislem.Visible = false;
            }

            MultiView1.ActiveViewIndex = index - 1;
        }
        protected void btnileri_Click(object sender, EventArgs e)
        {
            string viewiid = MultiView1.GetActiveView().ID;
            int index;
            if (viewiid == "ViewKitap0")
            {
                index = 0;
                btnKitap.BackColor = pasifcolor;
                btnKitap.Enabled = true;
                btnKullanici.BackColor = activecolor;
                btnKullanici.Enabled = false;
                btnOdeme.BackColor = pasifcolor;
                btnOdeme.Enabled = true;
                btnOnayla.BackColor = pasifcolor;
                btnOnayla.Enabled = true;
                btnGeri.Enabled = true;
                btnileri.Visible = true;
                btnBitir.Enabled = false;
                btnOnaylaislem.Visible = false;
            }
            else if (viewiid == "ViewKullanici1")
            {
                index = 1;
                btnKitap.BackColor = pasifcolor;
                btnKitap.Enabled = true;
                btnKullanici.BackColor = pasifcolor;
                btnKullanici.Enabled = true;
                btnOdeme.BackColor = activecolor;
                btnOdeme.Enabled = false;
                btnOnayla.BackColor = pasifcolor;
                btnOnayla.Enabled = true;
                btnGeri.Enabled = true;
                btnileri.Visible = true;
                btnBitir.Enabled = false;
                btnOnaylaislem.Visible = false;
            }
            else if (viewiid == "ViewOdeme2")
            {
                index = 2;
                btnKitap.BackColor = pasifcolor;
                btnKitap.Enabled = true;
                btnKullanici.BackColor = pasifcolor;
                btnKullanici.Enabled = true;
                btnOdeme.BackColor = pasifcolor;
                btnOdeme.Enabled = true;
                btnOnayla.BackColor = activecolor;
                btnOnayla.Enabled = false;
                btnGeri.Enabled = true;
                btnileri.Visible = false;
                btnBitir.Enabled = false;
                btnOnaylaislem.Visible = true;
            }
            else if (viewiid == "ViewOnayla3")
            {
                index = 3;
            }
            else
            {
                index = 0;
                btnKitap.BackColor = activecolor;
                btnKitap.Enabled = false;
                btnKullanici.BackColor = pasifcolor;
                btnKullanici.Enabled = true;
                btnOdeme.BackColor = pasifcolor;
                btnOdeme.Enabled = true;
                btnOnayla.BackColor = pasifcolor;
                btnOnayla.Enabled = true;
            }

            MultiView1.ActiveViewIndex = index + 1;
        }


        protected void btnOnaylaislem_Click(object sender, EventArgs e)
        {
            btnKitap.BackColor = pasifcolor;
            btnKitap.Enabled = true;
            btnKullanici.BackColor = pasifcolor;
            btnKullanici.Enabled = true;
            btnOdeme.BackColor = pasifcolor;
            btnOdeme.Enabled = true;
            btnOnayla.BackColor = pasifcolor;
            btnOnayla.Enabled = true;
            btnSiparis.BackColor = activecolor;
            btnSiparis.Enabled = false;
            btnGeri.Enabled = true;
            btnileri.Visible = false;
            btnBitir.Enabled = true;
            btnOnaylaislem.Visible = false;

            btniptal.Visible = false;
            btnGeri.Visible = false;

            string kitid = Request.QueryString["Kitapid"].ToString();
            string kulid = Session["KID"].ToString();
            string sipariscode = DBop.RandomCode();
            LabelSiparisKodu.Text = "'" + sipariscode + "' kodu ile siparişinizi takip edebilirsiniz.";
            DBop.KullaniciSiparisEkle(kitid, kulid, sipariscode, 1);
            MultiView1.ActiveViewIndex = 4;
        }
        protected void btniptal_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UKitapDetay.aspx?Kitapid=" + Request.QueryString["Kitapid"].ToString());
        }
        protected void btnBitir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UAnasayfa.aspx");
        }
    }
}