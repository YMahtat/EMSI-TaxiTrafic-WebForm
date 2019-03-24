using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (!HttpContext.Current.Request.IsLocal)
            {
                Response.Status = "403 Forbidden";
                Response.End();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                var lu = ctx.Users.ToList();
                foreach (var user in lu)
                {
                    user.PASSWORD = TaxiTraficSecurity.getPasswordMD5Hash("123456");
                }
                ctx.SaveChanges();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}