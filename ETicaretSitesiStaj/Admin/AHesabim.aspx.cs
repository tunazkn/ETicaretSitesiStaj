using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.Admin
{
    public partial class AHesabim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Convert.ToBoolean(Session["ALogin"]) == false)
            {
                Response.Redirect("~/AdminLogin.aspx?msg=Once Giris Yapmalisiniz...");
            }
            else
            {*/
            if (!IsPostBack)
            {
                try
                {
                    string[] AdminBilgileri = DBop.AdminBilgileri(Session["AID"].ToString());
                    lblAdminadi.Text = AdminBilgileri[1];

                    txtAdminAdi.Text = AdminBilgileri[1];
                    txtAdminMail.Text = AdminBilgileri[2];
                    txtAdminTel.Text = AdminBilgileri[3];

                    btnBilgilerim.Font.Bold = true;
                    btnBilgilerim.Font.Underline = true;
                }
                catch { }
            }
        }
    }
}