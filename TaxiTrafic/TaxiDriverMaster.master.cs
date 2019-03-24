using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class TaxiDriverMaster : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["PROFIL"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if ((int)Session["PROFIL"] == 1)
            {
                Response.Redirect("HomeAdmin.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["FIRST_NAME"] + " " + Session["LAST_NAME"] + " (" + Session["EMAIL"] + ")";
        }
    }
}