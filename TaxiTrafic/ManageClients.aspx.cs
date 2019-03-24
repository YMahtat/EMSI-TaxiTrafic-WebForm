using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class AdminClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientEntity.Updated += ClientEntity_Updated;
            ClientEntity.Deleted += ClientEntity_Deleted;
            ClientEntity.Inserted += ClientEntity_Inserted;
            if (ClientGrid.Rows.Count == 0)
            {
                Panel1.Visible = true;
            }
        }

        private void ClientEntity_Inserted(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                ClientGrid.DataBind();
            }
        }

        private void ClientEntity_Deleted(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                ClientGrid.DataBind();
            }
        }

        private void ClientEntity_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                ClientGrid.DataBind();
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                Client client = new Client();

                client.LAST_NAME = ((TextBox)ClientGrid.FooterRow.FindControl("nomAdd")).Text;
                client.FIRST_NAME = ((TextBox)ClientGrid.FooterRow.FindControl("prenomAdd")).Text;
                client.PHONE = ((TextBox)ClientGrid.FooterRow.FindControl("phoneAdd")).Text;
                if(client.LAST_NAME == "" || client.FIRST_NAME == "" || client.PHONE == "" )
                {
                    ((Label)ClientGrid.FooterRow.FindControl("Required")).Text = " ***Tous les champs doivent être remplis";
                }
                else
                {
                    ctx.Clients.Add(client);
                    ctx.SaveChanges();
                    ClientGrid.DataBind();
                }
                    
            }
        }

        protected void AddClients_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddClient.aspx");
        }

        protected void ClientGrid_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (ClientGrid.Rows.Count <= 1)
            {
                Panel1.Visible = true;
            }
        }
    }
}