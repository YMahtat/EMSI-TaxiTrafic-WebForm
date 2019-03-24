using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class AddUser : System.Web.UI.Page
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
                    User u = new User();
                    u.FIRST_NAME = first_name.Text;
                    u.LAST_NAME = last_name.Text;
                    u.PHONE = phone.Text;
                    u.EMAIL = email.Text;
                    u.PASSWORD = password.Text;
                    u.PROFIL = Int32.Parse(profil.SelectedValue);
                    ctx.Users.Add(u);
                    ctx.SaveChanges();
                    Response.Redirect("~/ManageUsers.aspx");
                }
                catch
                {
                    ErrorLast.Text = "** ERROR ADDING USER - RETRY !! **";
                    ErrorTOP.Text = "** ERROR ADDING USER **" ;
                }
            }
        }
    }
}