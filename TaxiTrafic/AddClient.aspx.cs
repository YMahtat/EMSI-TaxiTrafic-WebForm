using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class addClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void AddButton_Click(object sender, EventArgs e)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                Client client = new Client();
                client.FIRST_NAME = first_name.Text;
                client.LAST_NAME = last_name.Text;
                client.PHONE = phone.Text;

                ctx.Clients.Add(client);
                ctx.SaveChanges();
                Response.Redirect("~/ManageClients.aspx");
            }
        }
    }
}