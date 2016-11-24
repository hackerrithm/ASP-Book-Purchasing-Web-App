using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session.Clear();
            Session.Remove("account");
            Session.Remove("AccountUserName");
        }
        finally
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }

    }
}