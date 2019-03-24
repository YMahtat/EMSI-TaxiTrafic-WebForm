using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class ManagePeriodicCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EntityDataSource1.WhereParameters["DateNow"].DefaultValue = DateTime.Now.ToShortDateString();
        }

        protected void AddCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCourse.aspx");
        }
    }
}