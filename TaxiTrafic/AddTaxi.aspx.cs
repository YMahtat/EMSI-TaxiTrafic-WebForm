using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class AddTaxi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            using (var ctx = new TaxiTraficEntities())
            {

                try
                {
                    Taxi taxi = new Taxi();

                    taxi.MATRICULE = matricule.Text;
                    taxi.TYPE = type.Text;

                    taxi.driver_ID = Int32.Parse(driver.SelectedValue);
                    ctx.Taxis.Add(taxi);
                    ctx.SaveChanges();
                    Response.Redirect("~/ManageTaxis.aspx");
                }
                catch
                {
                    ErrorTOP.Text = " ***Error - TaxiDriver déjà affecté";
                    ErrorLast.Text = " ***Error - TaxiDriver déjà affecté !!!    *** RETRY !!!!";
                }
            }
        }
    }
}