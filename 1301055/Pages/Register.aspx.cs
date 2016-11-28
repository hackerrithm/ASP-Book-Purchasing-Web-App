using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    SqlConnection conn  = null;
    SqlCommand command  = null;
    Account userAccount = new Account();    // Create Account class object [userAccount]
    DatabaseProcedures dbProc = new DatabaseProcedures();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string blank        = null;

        Account userAccount1 = new Account(txtUserNameBox.Text.ToString(), txtFirstName.Text.ToString(), 
                                            txtLastName.Text.ToString(), blank, txtPasswordBox.Text.ToString(), txtEmail.Text.ToString(),
                                            blank, blank, blank, blank, ddlCountries.SelectedItem.Text.ToString().Trim(), 0, blank, 
                                            DateTime.UtcNow, false);

            dbProc.Insert(userAccount1);
            if (Session["AccountUserName"] == null)
            {
                Session["AccountUserName"] = txtUserNameBox.Text;
                Session["FirstTimeUser"] = true;
            }
            else
            {
                Session["AccountUserName"] = null;
                Session["AccountUserName"] = txtUserNameBox.Text;
                Session["FirstTimeUser"] = true;
            }

            Response.Redirect("PurchasePage.aspx");
    }

    protected void btnGoToLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}