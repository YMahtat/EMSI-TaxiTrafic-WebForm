using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class ZoneClient : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {

            if (Session["PROFIL"] != null)
            {
                if ((int)Session["PROFIL"] == (int)Profil.Administrator)
                {
                    MasterPageFile = "~/AdministratorMaster.Master";
                }
                else if ((int)Session["PROFIL"] == (int)Profil.TaxiDriver)
                {
                    MasterPageFile = "~/TaxiDriverMaster.Master";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}