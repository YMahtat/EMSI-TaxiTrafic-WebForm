using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class ManageCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EntityDataSource1.WhereParameters["DateNow"].DefaultValue = DateTime.Now.ToShortDateString();
            if (GridView1.Rows.Count == 0)
            {
                Panel1.Visible = true;
            }
        }

        protected void AddCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCourse.aspx");
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (GridView1.Rows.Count <= 1)
            {
                Panel1.Visible = true;
            }
        }
    }
}