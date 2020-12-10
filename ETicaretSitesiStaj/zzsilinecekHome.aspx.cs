using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataListYuksekPuan.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.KitapOrtalamaPuani", "desc");
                DataListYuksekPuan.DataBind();

                DataListSonEklenen.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.Kitapid", "desc");
                DataListSonEklenen.DataBind();

                DataListDusukPuan.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.KitapOrtalamaPuani", "asc");
                DataListDusukPuan.DataBind();

                DataListilkEklenen.DataSource = DBop.getFirstLast5Books("Tbl_Kitaplar.Kitapid", "asc");
                DataListilkEklenen.DataBind();
            }
            catch { }
        }
    }
}