using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.Admin
{
    public partial class Onerilenler : System.Web.UI.Page
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
                        DataListoner.DataSource = DBop.getAllOnerilen();
                        DataListoner.DataBind();
                    }
                    catch { }
                }
            //}
        }
    }
}