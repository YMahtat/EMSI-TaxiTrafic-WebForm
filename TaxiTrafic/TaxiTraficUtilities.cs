using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiTrafic
{
    
    public enum Profil { NotAffected, Administrator, TaxiDriver}

    public enum Day { Lundi, Mardi, Mercredi, Jeudi, Vendredi, Samedi, Dimanche}

    public static class TypeTaxi
    {
        public const object NotAffected = null;
        public const string PETIT = "PETIT";
        public const string MOYEN = "MOYEN";
        public const string GRAND = "GRAND";

    }

}