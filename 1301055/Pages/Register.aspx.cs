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

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string accessLevel  = "user";
        string blank        = null;

        Account userAccount1 = new Account(txtUserNameBox.Text.ToString(), txtFirstName.Text.ToString(), 
                                            txtLastName.Text.ToString(), blank, txtPasswordBox.Text.ToString(), txtEmail.Text.ToString(),
                                            blank, blank, blank, blank, ddlCountries.SelectedItem.Text.ToString().Trim(), 0, blank, 
                                            DateTime.UtcNow, false);

        conn = new SqlConnection(SQLConnectionString.getConnectionString());

        command = new SqlCommand("spCreateUserAccount", conn);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.Add("@UserName", SqlDbType.VarChar).Value    = userAccount1.UserName;
        command.Parameters.Add("@FirstName", SqlDbType.VarChar).Value   = userAccount1.FirstName;
        command.Parameters.Add("@LastName", SqlDbType.VarChar).Value    = userAccount1.LastName;
        command.Parameters.Add("@Email", SqlDbType.VarChar).Value   = userAccount1.Email;
        command.Parameters.Add("@DateJoined", SqlDbType.Date).Value     = DateTime.Now;
        command.Parameters.Add("@Password", SqlDbType.VarChar).Value    = userAccount1.Password;
        command.Parameters.Add("@Country", SqlDbType.VarChar).Value     = userAccount1.Country;
        command.Parameters.Add("@AccessLevel", SqlDbType.VarChar).Value = accessLevel;

        try
        {
            conn.Open();
            command.ExecuteNonQuery();
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
        catch(SqlException sqlExcpt)
        {
            Debug.Write(sqlExcpt.Message);
            Debug.Write(sqlExcpt.StackTrace);
            Response.Write(sqlExcpt.Message);
        }
        catch(Exception excpt)
        {
            Debug.Write(excpt.Message);
            Debug.Write(excpt.StackTrace);
            Response.Write(excpt.Message);
        }
        finally
        {
            conn.Close();
        }
    }

    protected void btnGoToLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}