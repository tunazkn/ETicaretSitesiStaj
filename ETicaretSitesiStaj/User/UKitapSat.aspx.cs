using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretSitesiStaj.User
{
    public partial class UKitapSat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Convert.ToBoolean(Session["KullaniciLogin"]) == false)
            {
                Response.Redirect("~/Login.aspx?msg=Once Giris Yapmalisiniz...");
            }
            else
            {*/
                if (!IsPostBack)
                {
                    try { }
                    catch { }
                }
            //}
        }

        protected void btnUkitapgonder_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/bookimages/" + FileUpload1.FileName));
            string Kresim = "~/bookimages/" + FileUpload1.FileName;

            DBop.yeniKitapOner(txtSatkitapadi.Text, txtSatkitapacıklama.Text, txtSatkitapfiyat.Text, Kresim, txtSatkitapkategori.Text, txtSatkitapyazar.Text, txtSatkitapyayınevi.Text);
        }
    }
}