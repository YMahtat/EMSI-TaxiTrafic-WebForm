using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class MangeTaxis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            EntityDataTaxi.Deleted += EntityDataTaxi_Deleted;
            EntityDataTaxi.Updated += EntityDataTaxi_Updated;
            EntityDataTaxi.Inserted += EntityDataTaxi_Inserted;
            if(GridView1.Rows.Count == 0)
            {
                Panel1.Visible = true;
            }

        }

        private void EntityDataTaxi_Inserted(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                GridView1.DataBind();
            }
        }

        private void EntityDataTaxi_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                GridView1.DataBind();
            }
        }

        private void EntityDataTaxi_Deleted(object sender, EntityDataSourceChangedEventArgs e)
        {
            
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                GridView1.DataBind();
            }

        }

       


        protected void Add_Click(object sender, EventArgs e)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                Taxi taxi = new Taxi();

                taxi.MATRICULE = ((TextBox)GridView1.FooterRow.FindControl("matricule")).Text;
                taxi.TYPE = ((DropDownList)GridView1.FooterRow.FindControl("type")).Text;

                taxi.driver_ID = Int32.Parse(((DropDownList)GridView1.FooterRow.FindControl("driver")).SelectedValue);


                if (taxi.MATRICULE == "")
                {
                    ((Label)GridView1.FooterRow.FindControl("Required")).Text = " ***Tous les champs doivent être remplis";
                }
                else
                {
                    try
                    {
                        ctx.Taxis.Add(taxi);
                        ctx.SaveChanges();
                        GridView1.DataBind();
                    }
                    catch   
                    {
                        ((Label)GridView1.FooterRow.FindControl("Required")).Text = " ***Error - TaxiDriver déjà affecté";
                    }
                    
                   
                }
            }
        }


        protected void AddTaxi_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddTaxi.aspx");
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