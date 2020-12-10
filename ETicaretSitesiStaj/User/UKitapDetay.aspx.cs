using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class UKitapDetay : System.Web.UI.Page
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
                    string kitid = Request.QueryString["Kitapid"].ToString();
                    Page.Title = "Kullanıcı - Kitap Detayı | " + DBop.getKitapAd(kitid);

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
                catch { }
            }
        }

        protected void btnyorumyap_Click(object sender, EventArgs e)
        {
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.yorumEkle(txtyorumicerik.Text, Session["KID"].ToString(), kitid);
            txtyorumicerik.Text = "";
            Response.Redirect("UKitapDetay.aspx?Kitapid=" + kitid);
            DataListYorumlar.DataSource = DBop.getYorumlar(kitid.ToString());
            DataListYorumlar.DataBind();
        }

        protected void imgbtn0_Click(object sender, ImageClickEventArgs e)
        {
            string a = "0,0";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn01_Click(object sender, ImageClickEventArgs e)
        {
            string a = "0,5";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn1_Click(object sender, ImageClickEventArgs e)
        {
            string a = "1,0";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn12_Click(object sender, ImageClickEventArgs e)
        {
            string a = "1,5";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn2_Click(object sender, ImageClickEventArgs e)
        {
            string a = "2,0";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn23_Click(object sender, ImageClickEventArgs e)
        {
            string a = "2,5";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn3_Click(object sender, ImageClickEventArgs e)
        {
            string a = "3,0";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn34_Click(object sender, ImageClickEventArgs e)
        {
            string a = "3,5";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn4_Click(object sender, ImageClickEventArgs e)
        {
            string a = "4,0";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn45_Click(object sender, ImageClickEventArgs e)
        {
            string a = "4,5";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void imgbtn5_Click(object sender, ImageClickEventArgs e)
        {
            string a = "5,0";
            float puan = (float)Convert.ToDouble(a.Replace(".", ","));
            int kitid = Convert.ToInt32(Request.QueryString["Kitapid"].ToString());
            DBop.KitapPuaniEkle(kitid, Session["KID"].ToString(), puan);

            DataListKitapDetay.DataSource = DBop.getKitapDetay(kitid.ToString());
            DataListKitapDetay.DataBind();
        }

        protected void btnSepeteEkle_Click(object sender, EventArgs e)
        {
            string kitapid = Request.QueryString["Kitapid"].ToString();
            float fiyat = (float)Convert.ToDouble((DBop.KitapBilgileriOku(kitapid)[1]).Replace(".", ","));
            DBop.SepeteEkle(Session["KID"].ToString(), kitapid, 1, fiyat);
        }
    }
}