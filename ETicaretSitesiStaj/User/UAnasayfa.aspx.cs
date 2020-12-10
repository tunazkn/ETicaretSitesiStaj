using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class UAnasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["KLogin"]) == false)
            {
                Response.Redirect("~/Login.aspx?msg=Once Giris Yapmalisiniz...");
            }
            else
            {
            if (!IsPostBack)
            {
                try
                {
                    DataListYuksekPuan.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.KitapOrtalamaPuani", "desc");
                    DataListYuksekPuan.DataBind();

                    DataListSonEklenen.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.Kitapid", "desc");
                    DataListSonEklenen.DataBind();

                    DataListYorumSayisi.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.KitapYorumSayisi", "desc");
                    DataListYorumSayisi.DataBind();

                    DataListDusukPuan.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.KitapOrtalamaPuani", "asc");
                    DataListDusukPuan.DataBind();

                    DataListilkEklenen.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.Kitapid", "asc");
                    DataListilkEklenen.DataBind();
                }
                catch { }
            }
        }


        protected void LinkbtnYuksekPuan_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UKitaplar.aspx?liste=1&sira=0");
        }

        protected void LinkbtnSonEklenenlerTumu_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UKitaplar.aspx?liste=0&sira=0");
        }
        protected void LinkbtnYorumSayisi_Click(object sender, EventArgs e)
        {
        }
        protected void LinkbtnDusukPuan_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UKitaplar.aspx?liste=1&sira=1");
        }
        protected void LinkbtnilkEklenenlerTumu_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UKitaplar.aspx?liste=0&sira=1");
        }
    }
}