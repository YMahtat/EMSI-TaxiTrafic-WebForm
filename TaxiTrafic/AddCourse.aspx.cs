using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiTrafic
{
    public partial class AddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void AddButton_Click(object sender, EventArgs e)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                if(type.SelectedValue == "1")
                {
                    try
                    {
                        TimeSpan debutTravail = new TimeSpan(7, 0, 0);
                        TimeSpan finTravail = new TimeSpan(20, 0, 0);

                        Cours c = new Cours();
                        c.STARTING_ADDRESS = (string)Request.Form["origin"];
                        c.ARRIVAL_ADDRESS = (string)Request.Form["destination"];
                        c.STARTING_DAY = DateTime.Parse(DateDepart.Text);
                        c.STARTING_TIME = TimeSpan.Parse(TimeDepart.Text);
                        if(c.STARTING_TIME < debutTravail || c.STARTING_TIME > finTravail)
                        {
                            throw new InvalidTimeZoneException("HORS PERIODE DE TRAVAIL");
                        }
                        c.client_ID = Int32.Parse(client.SelectedValue);
                        TimeSpan time = TaxiTraficAffectation.GetMatrixDistance(c.STARTING_ADDRESS, c.ARRIVAL_ADDRESS) + c.STARTING_TIME;
                        DateTime date = c.STARTING_DAY;
                        c.ARRIVAL_TIME = new DateTime(date.Year, date.Month, date.Day, time.Hours, time.Minutes, time.Seconds);
                        var x = ctx.Courses.Where(r => r.STARTING_DAY == c.STARTING_DAY)
                                           .Where(r => r.client_ID == c.client_ID)
                                           .Where(r =>  r.STARTING_TIME >= c.STARTING_TIME)
                                           .Where(r => r.STARTING_TIME <= time).FirstOrDefault();
                        DateTime dep = c.STARTING_DAY;

                        dep = dep.Add(c.STARTING_TIME);
                        var y = ctx.Courses.Where(r => r.STARTING_DAY == c.STARTING_DAY)
                                           .Where(r => r.client_ID == c.client_ID)
                                           .Where(r => r.ARRIVAL_TIME >= dep)
                                           .Where(r => r.ARRIVAL_TIME <= c.ARRIVAL_TIME).FirstOrDefault();


                        if ( x == null && y == null)
                        {
                            ctx.Courses.Add(c);
                            ctx.SaveChanges();
                            Error.Text = "";
                            ERRORX.Text = "";
                            Response.Redirect("~/ManageCourses.aspx");
                        }
                        else
                        {
                            Error.Text = "*** ERROR ADDING COURSE - CHEVAUCHEMENT !!!!";
                            ERRORX.Text = "*** ERROR ADDING COURSE - CHEVAUCHEMENT !!!!";
                        }
                                 
                       
                    }
                    catch
                    {
                        Error.Text = "*** ERROR ADDING COURSE !!!!";
                        ERRORX.Text = "*** ERROR ADDING COURSE !!!!";
                    }
                }
                else if (type.SelectedValue == "2")
                {
                    try
                    {
                        TimeSpan debutTravail = new TimeSpan(7, 0, 0);
                        TimeSpan finTravail = new TimeSpan(20, 0, 0);

                        foreach (ListItem item in DAYS.Items)
                        {
                            if (item.Selected)
                            {
                                Periodic_Courses c = new Periodic_Courses();
                                c.STARTING_ADDRESS = (string)Request.Form["origin"];
                                c.ARRIVAL_ADDRESS = (string)Request.Form["destination"];
                                c.DAY= Int32.Parse(item.Value);
                                c.STARTING_TIME = TimeSpan.Parse(TimePeriod.Text);

                                if (c.STARTING_TIME < debutTravail || c.STARTING_TIME > finTravail)
                                {
                                    throw new InvalidTimeZoneException("HORS PERIODE DE TRAVAIL");
                                }

                                DateTime d;
                                if(DateTime.TryParse(limite.Text, out d))
                                {
                                    c.LIMIT_DATE = d;
                                }
                                else
                                {
                                    c.LIMIT_DATE = null;
                                }

                             
                                

                                var x = ctx.Periodic_Courses.Where(r => (r.DAY == c.DAY))
                                                    .Where(r => r.client_ID == c.client_ID)
                                                    .Where(r => r.STARTING_TIME == c.STARTING_TIME).FirstOrDefault();
                                
                              

                                if (c.LIMIT_DATE == null || d.Date > DateTime.Now)
                                {
                                    c.client_ID = Int32.Parse(client.SelectedValue);
                                    
                                    if (x == null)
                                    {
                                        ctx.Periodic_Courses.Add(c);
                                        
                                        Error.Text = "";
                                        ERRORX.Text = "";
                                        
                                    }
                                }
                                else
                                {
                                    Error.Text = "*** ERROR ADDING COURSE !!!!";
                                    ERRORX.Text = "*** ERROR ADDING COURSE !!!!";
                                }
                            }
                        }

                        ctx.SaveChanges();
                        Response.Redirect("~/ManagePeriodicCourses.aspx");




                    }
                    catch
                    {
                        Error.Text = "*** ERROR ADDING COURSE !!!!";
                        ERRORX.Text = "*** ERROR ADDING COURSE !!!!";
                    }
                }
            }
        }
    }
}