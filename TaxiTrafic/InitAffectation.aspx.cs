using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class InitAffectation : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            TaxiTraficAffectation.InitTaxiCourses(DateTime.Now.Date);
            EntityDataSource1.WhereParameters["DateNow"].DefaultValue = DateTime.Now.ToShortDateString();
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void affectation_Click(object sender, EventArgs e)
        {
            Response.Redirect("TestAffectation.aspx");
        }

    }
}