using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj
{
    public partial class Kitaplar : System.Web.UI.Page
    {
        public string fiyatfiltre;
        public string maxfiyat = DBop.getMaxFiyat();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["KLogin"] = false;
            if (!IsPostBack)
            {
                try
                {
                    DropDownList dropdl = this.Master.FindControl("DDLSearch") as DropDownList;
                    dropdl.SelectedValue = "1";

                    txtMinFiyat.Text = null;
                    txtMaxFiyat.Text = null;
                    DDLKitap.DataSource = DBop.getAllKitaplar();
                    DDLKitap.DataTextField = "KitapAdi";
                    DDLKitap.DataBind();

                    DDLYazar.DataSource = DBop.getAllYazarlar();
                    DDLYazar.DataTextField = "YazarAdiSoyadi";
                    DDLYazar.DataBind();

                    DDLKategori.DataSource = DBop.getAllKategori();
                    DDLKategori.DataTextField = "KategoriAdi";
                    DDLKategori.DataBind();

                    DDLYayınevi.DataSource = DBop.getAllYayinevleri();
                    DDLYayınevi.DataTextField = "YayineviAdi";
                    DDLYayınevi.DataBind();
                    if (Session["ara"] != null)
                    {
                        Page.Title = "Kitaplar | Arama - " + Session["ara"].ToString();
                        string arama = Session["ara"].ToString();
                        lblTumKitaplarListesi.Text = "'" + arama + "' için arama sonuçları";
                        lblTumKitaplarinSayisi.Text = DBop.getKitapSayisiArama(arama).ToString() +
                                                      " Adet Kitap Listelendi.";
                        Session["ara"] = null;
                        Session["ddlara"] = null;
                        DataListTumKitaplar.DataSource = DBop.KitapAraisim(arama);
                        DataListTumKitaplar.DataBind();
                    }
                    else
                    {
                        lblTumKitaplarinSayisi.Text = DBop.getTumKitapSayisi().ToString() + " Adet Kitap Listelendi.";
                        string liste = Request.QueryString["liste"].ToString();
                        string sira = Request.QueryString["sira"].ToString();
                        if (liste == "0")
                        {
                            /*liste 0 ise kitapid ye göre*/
                            if (sira == "0")
                            {
                                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapAdi", "asc");
                                DataListTumKitaplar.DataBind();
                            }
                            else
                            {
                                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapAdi", "desc");
                                DataListTumKitaplar.DataBind();
                            }
                        }
                        else
                        {
                            /*list =1 ise kitap puanına ye göre sırala*/
                            if (sira == "0")
                            {
                                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapOrtalamaPuani", "asc");
                                DataListTumKitaplar.DataBind();
                            }
                            else
                            {
                                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapOrtalamaPuani", "desc");
                                DataListTumKitaplar.DataBind();
                            }
                        }
                    }
                }
                catch { }
            }
        }
        protected void btnFilterAll_Click(object sender, EventArgs e)
        {
            Page.Title = "Kitaplar | Filtreleme Sonuçları";
            fiyatfiltre = " 0 AND " + maxfiyat + " ";
            lblTumKitaplarListesi.Text = "Filtreleme Sonuçları";
            lblTumKitaplarinSayisi.Text =
                DBop.getSayiFiltre(DDLKitap.SelectedItem.Text, DDLYazar.SelectedItem.Text, DDLKategori.SelectedItem.Text, DDLYayınevi.SelectedItem.Text, fiyatfiltre).ToString() +
                " Adet Kitap Listelendi.";
            DataListTumKitaplar.DataSource = DBop.Search(DDLKitap.SelectedItem.Text, DDLYazar.SelectedItem.Text, DDLKategori.SelectedItem.Text, DDLYayınevi.SelectedItem.Text, fiyatfiltre);
            DataListTumKitaplar.DataBind();
        }
        protected void btnFilterFiyat_Click(object sender, EventArgs e)
        {
            Page.Title = "Kitaplar | Filtreleme Sonuçları";
            string min = txtMinFiyat.Text;
            string max = txtMaxFiyat.Text;
            if (min == "")
            {
                if (max == "")
                {
                    fiyatfiltre = " 0 AND " + maxfiyat + " ";
                }
                else
                {
                    if (Convert.ToInt32(max) < 0)
                    {
                        max = maxfiyat;
                    }
                    fiyatfiltre = " 0 AND " + max + " ";
                }
            }
            else
            {
                if (Convert.ToInt32(min) < 0)
                {
                    min = "0";
                }
                if (max == "")
                {
                    fiyatfiltre = " " + min + " AND " + maxfiyat + " ";
                }
                else
                {
                    if (Convert.ToInt32(max) < 0)
                    {
                        max = maxfiyat;
                    }
                    if (Convert.ToInt32(min) > Convert.ToInt32(max))
                    {
                        max = maxfiyat;
                    }
                    fiyatfiltre = " " + min + " AND " + max + " ";
                }
            }
            lblTumKitaplarListesi.Text = "Filtreleme Sonuçları";
            lblTumKitaplarinSayisi.Text =
                DBop.getSayiFiltre(DDLKitap.SelectedItem.Text, DDLYazar.SelectedItem.Text, DDLKategori.SelectedItem.Text, DDLYayınevi.SelectedItem.Text, fiyatfiltre).ToString() +
                " Adet Kitap Listelendi.";
            lblfiltreisimleri.Text = "";
            if (DDLKitap.SelectedItem.Text != "--Seç--")
                lblfiltreisimleri.Text = lblfiltreisimleri.Text + DDLKitap.SelectedItem.Text + ", ";
            if (DDLYazar.SelectedItem.Text != "--Seç--")
                lblfiltreisimleri.Text = lblfiltreisimleri.Text + DDLYazar.SelectedItem.Text + ", ";
            if (DDLKategori.SelectedItem.Text != "--Seç--")
                lblfiltreisimleri.Text = lblfiltreisimleri.Text + DDLKategori.SelectedItem.Text + ", ";
            if (DDLYayınevi.SelectedItem.Text != "--Seç--")
                lblfiltreisimleri.Text = lblfiltreisimleri.Text + DDLYayınevi.SelectedItem.Text + ", ";
            if ((min != "" | max != ""))
            {
                if (min == "")
                    min = "0";
                lblfiltreisimleri.Text = lblfiltreisimleri.Text + "(" + min + " - " + max + ")TL";
            }
            if (lblfiltreisimleri.Text == "")
            {
                lblfiltreisimleri.Text="Tüm Kitaplar";
            }
            lblfiltreisimleri.Visible = true;
            Label3.Visible = true;

            DataListTumKitaplar.DataSource = DBop.Search(DDLKitap.SelectedItem.Text, DDLYazar.SelectedItem.Text, DDLKategori.SelectedItem.Text, DDLYayınevi.SelectedItem.Text, fiyatfiltre);
            DataListTumKitaplar.DataBind();
        }
        protected void BtnSecim_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Kitaplar.aspx?liste=0&sira=0");
        }
        protected void DDLSirala_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDLSirala.SelectedValue == "1")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapAdi", " asc");
                DataListTumKitaplar.DataBind();
            }
            if (DDLSirala.SelectedValue == "2")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapAdi", " desc");
                DataListTumKitaplar.DataBind();
            }
            if (DDLSirala.SelectedValue == "3")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapFiyat", " asc");
                DataListTumKitaplar.DataBind();
            }
            if (DDLSirala.SelectedValue == "4")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapFiyat", " desc");
                DataListTumKitaplar.DataBind();
            }
            if (DDLSirala.SelectedValue == "5")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapOrtalamaPuani", "desc");
                DataListTumKitaplar.DataBind();
            }
            if (DDLSirala.SelectedValue == "6")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.KitapOrtalamaPuani", "asc");
                DataListTumKitaplar.DataBind();
            }
            if (DDLSirala.SelectedValue == "7")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.Kitapid", "desc");
                DataListTumKitaplar.DataBind();
            }
            if (DDLSirala.SelectedValue == "8")
            {
                DataListTumKitaplar.DataSource = DBop.getAllBooks("Tbl_Kitaplar.Kitapid", "asc");
                DataListTumKitaplar.DataBind();
            }
        }
        protected void btnSepeteEkle_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Kitaplar.aspx?liste=0&sira=0");
        }
    }
}