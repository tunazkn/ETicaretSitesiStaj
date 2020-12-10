using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["KLogin"] = false;
            DataListKategoriliste.DataSource = DBop.getAllKategori();
            DataListKategoriliste.DataBind();
            if (!IsPostBack)
            {
                try
                {
                    DropDownList dropdl = this.Master.FindControl("DDLSearch") as DropDownList;
                    dropdl.SelectedValue = "3";

                    if (Session["ara"] != null)
                    {
                        Page.Title = "Kategoriler | Arama - " + Session["ara"].ToString();
                        string arama = Session["ara"].ToString();
                        lblKategorilerListesi.Text = "'" + arama + "' için arama sonuçları";
                        lblKategorilerKitapSayisi.Text = DBop.getKitapSayisikategoriArama(arama).ToString() +
                                                      " Adet Kitap Listelendi.";
                        Session["ara"] = null;
                        Session["ddlara"] = null;
                        DataListKategoriler.DataSource = DBop.KitapAraKategori(arama);
                        DataListKategoriler.DataBind();
                    }
                    else
                    {
                        string katid = Request.QueryString["kat"].ToString();
                        if (katid == "all")
                        {
                            lblKategorilerKitapSayisi.Text = DBop.getTumKitapSayisi().ToString() + " Adet Kitap Listelendi.";
                            DataListKategoriler.DataSource = DBop.getAllBooks("Tbl_Kategoriler.KategoriAdi", "asc");
                            DataListKategoriler.DataBind();
                        }
                        else
                        {
                            Page.Title = "Kategoriler | " + DBop.getKategoriAdi(katid);
                            lblKategorilerKitapSayisi.Text = "'" + DBop.getKategoriAdi(katid) + "' için " +
                                DBop.getKitapSayisiKategori(katid).ToString() + " Adet Kitap Listelendi.";
                            DataListKategoriler.DataSource = DBop.getBookKategori(katid);
                            DataListKategoriler.DataBind();
                        }
                    }
                }
                catch { }
            }
        }
    }
}