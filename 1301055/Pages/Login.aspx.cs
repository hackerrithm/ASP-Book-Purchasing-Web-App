using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand command = null;
    Account userAccount = new Account();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Handling Cookie request
            if (Request.Cookies["UserName"] != null)
                txtUserNameBox.Text = Request.Cookies["UserName"].Value;
            if (Request.Cookies["Password"] != null)
                txtPasswordBox.Attributes.Add("value", Request.Cookies["Password"].Value);
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                rememberme.Checked = true;
        }
        else
        {

        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String connectionString = SQLConnectionString.getConnectionString();
        conn = new SqlConnection(connectionString);

        PasswordHash hashPassWord = new PasswordHash();

        //string query = "SELECT * FROM UserAccount WHERE UserName='" + txtUserNameBox.Text + "' AND PasswordHash='" + hashPassWord.passwordHasher(txtPasswordBox.Text.ToString()) + "' ";

        command = new SqlCommand("spLogin", conn);
        command.CommandType = CommandType.StoredProcedure;


        command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = txtUserNameBox.Text;
        command.Parameters.Add("@Password", SqlDbType.VarChar).Value = hashPassWord.passwordHasher(txtPasswordBox.Text.ToString());
        //command = new SqlCommand(query, conn);

        conn.Open();

        SqlDataReader dataReader = command.ExecuteReader(CommandBehavior.CloseConnection);

        

        if (dataReader.Read())
        {
            string username         = dataReader.GetString(1);
            string password         = dataReader.GetString(5);

            userAccount.UserID      = dataReader.GetInt32(0);
            userAccount.UserName    = username;
            userAccount.FirstName   = dataReader.GetString(2);
            userAccount.LastName    = dataReader.GetString(3);
            userAccount.Password    = password;
            userAccount.AccessLevel = dataReader.GetString(26);




            if (userAccount.UserName.Equals(txtUserNameBox.Text) && userAccount.Password.Equals(hashPassWord.passwordHasher(txtPasswordBox.Text.ToString()))/*userAccount1==1*/)
            {
                

                if (rememberme.Checked == true)
                {
                    Response.Cookies["UserName"].Value      = txtUserNameBox.Text;
                    Response.Cookies["Password"].Value      = txtPasswordBox.Text;
                    Response.Cookies["UserName"].Expires    = DateTime.Now.AddDays(15);
                    Response.Cookies["Password"].Expires    = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["UserName"].Expires    = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires    = DateTime.Now.AddDays(-1);
                }

                HttpContext.Current.Session["User"]             = userAccount;
                HttpContext.Current.Session["AccountUserName"]  = txtUserNameBox.Text;
                HttpContext.Current.Session["FirstTimeUser"]    = false;
                HttpContext.Current.Session.Timeout = 60;

                if (userAccount.AccessLevel == "admin")
                {
                    Response.Redirect("AdminManageAccount.aspx");
                }


                Response.Redirect("PurchasePage.aspx");
            }
            else
            {
               
            }
        }
    }
}