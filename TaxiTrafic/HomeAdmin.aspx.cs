using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["FIRST_NAME"] + " " + Session["LAST_NAME"];
            email.Text = (string)Session["EMAIL"];
            phone.Text = (string)Session["PHONE"];
            using (var ctx = new TaxiTraficEntities())
            {
                Label1.Text = ctx.Users.Count().ToString();
                Label2.Text = ctx.Taxis.Count().ToString();
                Label3.Text = ctx.Clients.Count().ToString();
                Label4.Text = ctx.Courses.Count().ToString();
                Label5.Text = ctx.Periodic_Courses.Count().ToString();
                //DateTime Today = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);
                Label6.Text = ctx.Courses.Where(c=> c.STARTING_DAY == DateTime.Today).Count().ToString();

            }
        }
    }
}