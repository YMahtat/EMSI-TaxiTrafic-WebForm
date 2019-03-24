using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class HomeTaxiDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["FIRST_NAME"] + " " + Session["LAST_NAME"];
            email.Text = (string)Session["EMAIL"];
            phone.Text = (string)Session["PHONE"];
            if(Session["taxi_ID"] != null)
            {
                taxi_id.Text = Session["taxi_ID"].ToString();
                taxi_matricule.Text = (string)Session["taxi_matricule"];
                taxi_type.Text = (string)Session["taxi_type"];
            }
            else
            {
                taxi_id.Text = "NON AFFECTEE";
                taxi_matricule.Text = "NON AFFECTEE";
                taxi_type.Text = "NON AFFECTEE";
            }
            using (var ctx = new TaxiTraficEntities())
            {
                int idTaxi = Int32.Parse(taxi_id.Text);
                try
                {
                    Label1.Text = ctx.Courses.Where(c => c.taxi_ID == idTaxi).Count().ToString();
                    Label2.Text = ctx.Courses.Where(c => c.taxi_ID == idTaxi).Where(c => c.STARTING_DAY == DateTime.Today).Count().ToString();
                }
                catch
                {
                    Label1.Text = "-";
                    Label2.Text = "-";
                }
               

            }
        }
    }
}