using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj
{
    public partial class Yayinevleri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["KLogin"] = false;
            DataListYayınevliste.DataSource = DBop.getAllYayinevleri();
            DataListYayınevliste.DataBind();
            if (!IsPostBack)
            {
                try
                {
                    DropDownList dropdl = this.Master.FindControl("DDLSearch") as DropDownList;
                    dropdl.SelectedValue = "4";

                    if (Session["ara"] != null)
                    {
                        Page.Title = "Yayınevleri | Arama - " + Session["ara"].ToString();
                        string arama = Session["ara"].ToString();
                        lblYayinevlerListesi.Text = "'" + arama + "' için arama sonuçları";
                        lblYayinevlerKitapSayisi.Text = DBop.getKitapSayisiYayınevArama(arama).ToString() +
                                                      " Adet Kitap Listelendi.";
                        Session["ara"] = null;
                        Session["ddlara"] = null;
                        DataListYayinevler.DataSource = DBop.KitapAraYayınev(arama);
                        DataListYayinevler.DataBind();
                    }
                    else
                    {
                        string yevid = Request.QueryString["yev"].ToString();
                        if (yevid == "all")
                        {
                            lblYayinevlerKitapSayisi.Text = DBop.getTumKitapSayisi().ToString() + " Adet Kitap Listelendi.";
                            DataListYayinevler.DataSource = DBop.getAllBooks("Tbl_Yayinevleri.YayineviAdi", "asc");
                            DataListYayinevler.DataBind();
                        }
                        else
                        {
                            Page.Title = "Yayınevleri | " + DBop.getYayineviAdi(yevid);
                            lblYayinevlerKitapSayisi.Text = "'" + DBop.getYayineviAdi(yevid) + "' için " +
                                    DBop.getKitapSayisiYayinevi(yevid).ToString() + " Adet Kitap Listelendi.";
                            DataListYayinevler.DataSource = DBop.getBookYayinevi(yevid);
                            DataListYayinevler.DataBind();
                        }
                    }
                }
                catch { }
            }
        }
    }
}