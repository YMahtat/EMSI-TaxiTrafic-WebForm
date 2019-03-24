using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class InitAdminUser : System.Web.UI.Page
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
                var user = ctx.Users.Where(u => u.EMAIL == "admin@tc.ma").FirstOrDefault();
                if(user != null)
                {
                    user.PASSWORD = TaxiTraficSecurity.getPasswordMD5Hash("123456");
                }
                else
                {
                    User u = new User();
                    u.FIRST_NAME = "ADMIN";
                    u.LAST_NAME = "SYSTEM";
                    u.PHONE = "06XXXXXX32";
                    u.EMAIL = "admin@tc.ma";
                    u.PASSWORD = TaxiTraficSecurity.getPasswordMD5Hash("123456");
                    u.PROFIL = 1;
                    ctx.Users.Add(u);
                }
                Label1.Text = TaxiTraficSecurity.getPasswordMD5Hash("123456");
                ctx.SaveChanges();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        private string GetUserIP()
        {
            string ipList = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipList))
            {
                return ipList.Split(',')[0];
            }

            return Request.ServerVariables["REMOTE_ADDR"];
        }
    }
}