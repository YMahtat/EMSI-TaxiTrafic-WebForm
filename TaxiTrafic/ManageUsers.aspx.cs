using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EntityDataUsers.Deleted += EntityDataUsers_Deleted;
            EntityDataUsers.Updated += EntityDataUsers_Updated;
            EntityDataUsers.Inserted += EntityDataUsers_Inserted;
            if (GridView1.Rows.Count == 0)
            {
                Panel1.Visible = true;
            }

        }

        private void EntityDataUsers_Inserted(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                GridView1.DataBind();
            }
        }

        private void EntityDataUsers_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                GridView1.DataBind();
            }
        }

        private void EntityDataUsers_Deleted(object sender, EntityDataSourceChangedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                GridView1.DataBind();
            }
        }

        protected void Ajout_Click(object sender, EventArgs e)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                User user = new User();

                user.LAST_NAME = ((TextBox)GridView1.FooterRow.FindControl("nom")).Text;
                user.FIRST_NAME = ((TextBox)GridView1.FooterRow.FindControl("prenom")).Text;
                user.PHONE = ((TextBox)GridView1.FooterRow.FindControl("phone")).Text;
                user.EMAIL = ((TextBox)GridView1.FooterRow.FindControl("email")).Text;
                
                user.PASSWORD = TaxiTraficSecurity.getPasswordMD5Hash(((TextBox)GridView1.FooterRow.FindControl("password")).Text);


                if (user.LAST_NAME == "" || user.FIRST_NAME == "" || user.PHONE == "" || user.EMAIL == "" || user.PASSWORD == "" || ((DropDownList)GridView1.FooterRow.FindControl("profil")).SelectedValue == "")
                {
                    ((Label)GridView1.FooterRow.FindControl("Required")).Text = " ***Tous les champs doivent être remplis";
                }
                else
                {
                    try
                    {
                        user.PROFIL = Int32.Parse(((DropDownList)GridView1.FooterRow.FindControl("profil")).SelectedValue);
                        ctx.Users.Add(user);
                        ctx.SaveChanges();
                        GridView1.DataBind();
                    }
                    catch
                    {
                        ((Label)GridView1.FooterRow.FindControl("Required")).Text = " ***ERREUR !!!! (@-mail doit être unique)";
                    }
                }

            }
        }

        protected void AddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddUser.aspx");
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (GridView1.Rows.Count <= 1)
            {
                Panel1.Visible = true;
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            e.NewValues["PASSWORD"] = TaxiTraficSecurity.getPasswordMD5Hash((string)e.NewValues["PASSWORD"]);
        }
    }

}