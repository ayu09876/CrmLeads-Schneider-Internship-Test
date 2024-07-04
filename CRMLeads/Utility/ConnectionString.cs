using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CRMLeads.Utility
{
    public static class ConnectionString
    {

        private static string cName = "Data Source=LAPTOP-1TMIIIGV\\SQLEXPRESS;Initial Catalog=db_CrmLeads;Integrated Security=True;TrustServerCertificate=True";

        public static string CName { get => cName; }
    }
}

