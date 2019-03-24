using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class MyArchivedCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EntityDataSource1.WhereParameters["DateNow"].DefaultValue = DateTime.Now.ToShortDateString();

            try
            {
                EntityDataSource1.WhereParameters["taxi"].DefaultValue = ((int)Session["taxi_ID"]).ToString();
            }
            catch
            {
                EntityDataSource1.WhereParameters["taxi"].DefaultValue = "0";
            }



            if (GridView1.Rows.Count == 0)
            {
                Panel1.Visible = true;
            }
        }
    }
}