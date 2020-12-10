using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj
{
    public partial class Yazarlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["KLogin"] = false;
            DataListYazarliste.DataSource = DBop.getAllYazarlar();
            DataListYazarliste.DataBind();
            if (!IsPostBack)
            {
                try
                {
                    DropDownList dropdl = this.Master.FindControl("DDLSearch") as DropDownList;
                    dropdl.SelectedValue = "2";

                    if (Session["ara"] != null)
                    {
                        Page.Title = "Yazarlar | Arama - " + Session["ara"].ToString();
                        string arama = Session["ara"].ToString();
                        lblYazarlarListesi.Text = "'" + arama + "' için arama sonuçları";
                        lblYazarlarKitapSayisi.Text = DBop.getKitapSayisiYazarArama(arama).ToString() +
                                                      " Adet Kitap Listelendi.";
                        Session["ara"] = null;
                        Session["ddlara"] = null;
                        DataListYazarlar.DataSource = DBop.KitapAraYazar(arama);
                        DataListYazarlar.DataBind();
                    }
                    else
                    {
                        string yazid = Request.QueryString["yaz"].ToString();
                        if (yazid == "all")
                        {
                            lblYazarlarKitapSayisi.Text = DBop.getTumKitapSayisi().ToString() + " Adet Kitap Listelendi.";
                            DataListYazarlar.DataSource = DBop.getAllBooks("Tbl_Yazarlar.YazarAdiSoyadi", "asc");
                            DataListYazarlar.DataBind();
                        }
                        else
                        {
                            Page.Title = "Yazarlar | " + DBop.getYazarAdi(yazid);
                            lblYazarlarKitapSayisi.Text = "'" + DBop.getYazarAdi(yazid) + "' için " +
                                DBop.getKitapSayisiYazar(yazid).ToString() + " Adet Kitap Listelendi.";
                            DataListYazarlar.DataSource = DBop.getBookYazar(yazid);
                            DataListYazarlar.DataBind();
                        }
                    }
                }
                catch { }
            }
        }
    }
}