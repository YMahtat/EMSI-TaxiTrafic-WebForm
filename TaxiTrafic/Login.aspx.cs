using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            //bool isAuth = false;
            using (var ctx = new TaxiTraficEntities())
            {
                string hash = TaxiTraficSecurity.getPasswordMD5Hash(password.Text);
                User pretend = ctx.Users.Where(u => u.EMAIL == email.Text).Where(u => u.PASSWORD == hash).FirstOrDefault();
                
                if(pretend != null)
                {
                    Session["EMAIL"] = pretend.EMAIL;
                    Session["ID"] = pretend.ID;
                    Session["LAST_NAME"] = pretend.LAST_NAME;
                    Session["FIRST_NAME"] = pretend.FIRST_NAME;
                    Session["PROFIL"] = pretend.PROFIL;
                    Session["PHONE"] = pretend.PHONE;

                    if(pretend.PROFIL == 1)
                    {
                        Response.Redirect(@"~\HomeAdmin.aspx");
                    }
                    else if(pretend.PROFIL == 2)
                    {
                        if(pretend.Taxis.Count > 0)
                        {
                            Session["taxi_ID"] = pretend.Taxis.ElementAt(0).ID;
                            Session["taxi_matricule"] = pretend.Taxis.ElementAt(0).MATRICULE;
                            Session["taxi_type"] = pretend.Taxis.ElementAt(0).TYPE;
                        }
                        Response.Redirect(@"~\HomeTaxiDriver.aspx");
                    }

                }
                else
                {
                    ErrorTOP.Text = "*** LOGIN ou MOT DE PASSE invalide !!!!";
                    ErrorButtom.Text = "*** invalide !!!!";
                }


            }

        }
    }
}