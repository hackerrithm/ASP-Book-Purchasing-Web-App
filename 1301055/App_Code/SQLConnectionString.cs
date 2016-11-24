using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SQLConnectionString
/// </summary>
public static class SQLConnectionString
{
    static SQLConnectionString()
    {

    }

    public static string getConnectionString()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["HexebookConnectionString"].ConnectionString;
    }

}