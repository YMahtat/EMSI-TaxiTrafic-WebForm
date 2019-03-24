using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.IO;
using System.Data;
using System.Xml;
using System.Net;

namespace TaxiTrafic
{
    public class TaxiTraficAffectation
    {
        protected static TimeSpan toleranceTime()
        {
            return new TimeSpan(0, 5, 0);
        }




        public static TimeSpan GetMatrixDistance(string addrOrigin, string addrDestination)
        {
            TimeSpan timeDistance = TimeSpan.Zero;

            string urlApiGoogleMaps = @"https://maps.googleapis.com/maps/api/distancematrix/xml?origins=" 
                                        + addrOrigin + "&destinations=" + addrDestination + "&mode=driving&region=french";

            System.Net.HttpWebRequest requestApiGoogleMaps = (HttpWebRequest)WebRequest.Create(urlApiGoogleMaps);
            WebResponse responseApiGoogleMaps = requestApiGoogleMaps.GetResponse();
            Stream dataStream = responseApiGoogleMaps.GetResponseStream();
            StreamReader streamReader = new StreamReader(dataStream);
            string responseReader = streamReader.ReadToEnd();
            responseApiGoogleMaps.Close();

            DataSet xmlDataFile = new DataSet();
            xmlDataFile.ReadXml(new XmlTextReader(new StringReader(responseReader)));
            if (xmlDataFile.Tables.Count > 0)
            {
                string t = xmlDataFile.Tables["element"].Rows[0]["status"].ToString();
                if (xmlDataFile.Tables["element"].Rows[0]["status"].ToString() == "OK")
                {
                    int timeInSecondes = Int32.Parse(xmlDataFile.Tables["duration"].Rows[0]["value"].ToString());
                    timeDistance = new TimeSpan(0, 0, timeInSecondes);
                }
                else
                {
                    throw new XmlException("XML ERROR !! ");
                }
            }

            return timeDistance;
        }


        protected static bool isPossibleCourse(List<Cours> list, Taxi t, Cours c, DateTime d)
        {
            bool veracity = false;
            using (var ctx = new TaxiTraficEntities())
            {
                TimeSpan timeDistance = TimeSpan.Zero;
                Cours lastOfTaxi = null;
                try
                {
                    lastOfTaxi = list.Where(l => l.STARTING_DAY == d).Where(l => l.taxi_ID == t.ID)
                                                                     .OrderByDescending(l => l.STARTING_TIME).First();

                    timeDistance = GetMatrixDistance(lastOfTaxi.ARRIVAL_ADDRESS, c.STARTING_ADDRESS);
                }
                catch
                {
                    veracity = true;
                }
                
                if(lastOfTaxi == null)
                {
                    veracity = true;
                }
                else if ((lastOfTaxi.ARRIVAL_TIME.Value.TimeOfDay + timeDistance) <= (c.STARTING_TIME + toleranceTime()))
                {
                    veracity = true;
                }

            }

            return veracity;
        }


        protected static int FindPossibleTaxi(List<Cours> list, Cours c, DateTime d)
        {
            
            using (var ctx = new TaxiTraficEntities())
            {
                var taxis = ctx.Taxis.ToList();

                foreach (var t in taxis)
                {
                    if(isPossibleCourse(list, t,c,d))
                    {
                        return t.ID;
                    }
                }
            }

            return -1;
        }

        protected static bool TryAssignment(DateTime d)
        {
            try
            {

                using (var ctx = new TaxiTraficEntities())
                {
                    var courses = ctx.Courses.Where(c => c.STARTING_DAY == d).OrderBy(c => c.STARTING_TIME).ToList();

                    foreach (var c in courses)
                    {
                        int idTaxi = FindPossibleTaxi(courses, c, d);
                        if(idTaxi > 0)
                        {
                            c.taxi_ID = idTaxi;
                        }
                    }
                    ctx.SaveChanges();
                    return true;

                }

            }

            catch
            {
                return false;
            }
            
        }



        protected static bool GenerateCoursesFromPeriodicCourses(DateTime D)
        {
            int day = (int)D.DayOfWeek - 1;
            using (var ctx = new TaxiTraficEntities())
            {
                List<Periodic_Courses> list = ctx.Periodic_Courses.Where(c => c.DAY == day).Where(c => c.LIMIT_DATE >= D.Date)
                                                                   .OrderBy(c=> c.STARTING_TIME).ToList();
                List<Periodic_Courses> list2 = ctx.Periodic_Courses.Where(c => c.DAY == day).Where(c => c.LIMIT_DATE == null)
                                                                   .OrderBy(c => c.STARTING_TIME).ToList();
                list.AddRange(list2);
                foreach (var cp in list)
                {
                    TimeSpan debutTravail = new TimeSpan(7, 0, 0);
                    TimeSpan finTravail = new TimeSpan(20, 0, 0);

                    Cours c = new Cours();
                    c.STARTING_ADDRESS = cp.STARTING_ADDRESS;
                    c.ARRIVAL_ADDRESS = cp.ARRIVAL_ADDRESS;
                    c.STARTING_DAY = D.Date;
                    c.STARTING_TIME = cp.STARTING_TIME;
                    if (c.STARTING_TIME < debutTravail || c.STARTING_TIME > finTravail)
                    {
                        throw new InvalidTimeZoneException("HORS PERIODE DE TRAVAIL");
                    }
                    
                    c.client_ID = cp.client_ID;
                    TimeSpan time = TaxiTraficAffectation.GetMatrixDistance(c.STARTING_ADDRESS, c.ARRIVAL_ADDRESS) + c.STARTING_TIME;
                    DateTime date = c.STARTING_DAY;
                    c.ARRIVAL_TIME = new DateTime(date.Year, date.Month, date.Day, time.Hours, time.Minutes, time.Seconds);
                    var x = ctx.Courses.Where(r => r.STARTING_DAY == c.STARTING_DAY)
                                       .Where(r => r.client_ID == c.client_ID)
                                       .Where(r => r.STARTING_TIME >= c.STARTING_TIME)
                                       .Where(r => r.STARTING_TIME <= time).FirstOrDefault();
                    DateTime dep = c.STARTING_DAY;
                    dep = dep.Add(c.STARTING_TIME);
                    var y = ctx.Courses.Where(r => r.STARTING_DAY == c.STARTING_DAY)
                                       .Where(r => r.client_ID == c.client_ID)
                                       .Where(r => r.ARRIVAL_TIME >= dep)
                                       .Where(r => r.ARRIVAL_TIME <= c.ARRIVAL_TIME).FirstOrDefault();


                    if (x == null && y == null)
                    {
                        ctx.Courses.Add(c);
                    }

                }
                ctx.SaveChanges();

            }
            return false;
        }


        protected static bool isNotAffected(DateTime D)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                AffectedDay x = ctx.AffectedDays.Where(a => a.ID == 1).FirstOrDefault();
                return (x == null) || (x.AFFECTED < D.Date);
            }
        }

        protected static void AssignmentDONE(DateTime D)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                AffectedDay x = ctx.AffectedDays.Where(a => a.ID == 1).FirstOrDefault();
                if(x != null)
                {
                    x.AFFECTED = D;
                }
                else
                {
                    x = new AffectedDay();
                    x.AFFECTED = D;
                    ctx.AffectedDays.Add(x);
                }
                
                ctx.SaveChanges();
            }
        }

        protected static void AssignmentOLD(DateTime D)
        {
            using (var ctx = new TaxiTraficEntities())
            {
                AffectedDay x = ctx.AffectedDays.Where(a => a.ID == 1).FirstOrDefault();
                if (x != null)
                {
                    
                    x.AFFECTED = D.AddDays(-1);
                }
                else
                {
                    x = new AffectedDay();
                    x.AFFECTED = D.AddDays(-1); 
                    ctx.AffectedDays.Add(x);
                }

                ctx.SaveChanges();
            }
        }


        public static bool Assignment(DateTime D)
        {
            if(isNotAffected(D))
            {
                GenerateCoursesFromPeriodicCourses(D);
                
                if(TryAssignment(D))
                {
                    AssignmentDONE(D);
                    return true;
                }
            }
            return false;
        }


        public static void InitTaxiCourses(DateTime D)
        {
            using(var ctx = new TaxiTraficEntities())
            {
                var courses = ctx.Courses.Where(c => c.STARTING_DAY == D).OrderBy(c => c.STARTING_TIME).ToList();
                foreach (var c in courses)
                {
                    c.taxi_ID = null;
                }
                ctx.SaveChanges();
                AssignmentOLD(D);
            }
        }

        public static bool TestAssignment(DateTime D)
        {
            InitTaxiCourses(D);
            GenerateCoursesFromPeriodicCourses(D);

            if (TryAssignment(D))
            {
                if(isNotAffected(D))
                {
                    AssignmentDONE(D);
                }
                
                return true;
            }

            return false;
        }


    }
}