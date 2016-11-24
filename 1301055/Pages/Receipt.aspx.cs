using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(IsPostBack))
        {
            lblUserName.Text += Session["AccountUserName"].ToString().Trim();
            txtFirstName.Text += Session["firstName"];
            txtLastName.Text += Session["lastName"];
            txtBookName.Text += Session["NameOfBook"];
            txtQuantity.Text += Session["Quantity"].ToString().Trim();
            txtPaymentMethod.Text += Session["paymentMethod"];
            txtTotalBill.Text += Session["billPrice"];
            txtNewsletter.Text += Session["newsletter"];
        }

    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProfilePage.aspx");
    }

    protected void btnConfirmReceiptData_Click(object sender, EventArgs e)
    {
        Response.Redirect("PurchaseConfirmation.aspx");
    }
}