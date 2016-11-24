using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class CompleteOrder : System.Web.UI.Page
{

    SqlConnection conn = null;
    SqlCommand command = null;

    Order order = new Order();
    CartItemList bookItemList;
    Account userAccountSessionTracker = new Account();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblCardData.Visible = false;
        txtCardNumber.Visible = false;

        userAccountSessionTracker = (Account)HttpContext.Current.Session["User"];
        order.TotalAmount = Convert.ToDecimal(HttpContext.Current.Session["OrderTotalAmount"]);
        bookItemList = CartItemList.GetCart();

        lblTotalAmount.Text = order.TotalAmount.ToString();
    }

    private void placeOrder()
    {
        string username = txtUserName.Text;
        string shippingAddress = txtUserAddress.Text;
        string shippingCity = txtCity.Text;
        string shippingState = txtState.Text;
        string zipCode = txtZipCode.Text;
        string country = ddlCountries.SelectedItem.ToString();
        string contactNumber = txtContactNumber.Text.ToString();

        string paymentMethod = rdbPaymentMethod.SelectedItem.ToString();

        if (rdbPaymentMethod.SelectedIndex.Equals(0))
        {
            order.CashPurchase = true;
            order.CreditCardPurchase = false;
            order.DebitCardPurchase = false;
        }
        else if (rdbPaymentMethod.SelectedIndex.Equals(1))
        {
            order.CreditCardPurchase = true;
            order.DebitCardPurchase = false;
            order.CashPurchase = false;
            order.CardNumber = txtCardNumber.Text.ToString().Trim();
        }
        else if (rdbPaymentMethod.SelectedIndex.Equals(2))
        {
            order.DebitCardPurchase = true;
            order.CreditCardPurchase = false;
            order.CashPurchase = false;
            order.CardNumber = txtCardNumber.Text.ToString().Trim();
        }

        bool subscribeToNewsLetter = false;
        string userSubscibed = "no";
        if (chkbxSignUp.Checked)
        {
            subscribeToNewsLetter = true;
        }
        else
        {
            subscribeToNewsLetter = false;
        }

        if (subscribeToNewsLetter == true)
            userSubscibed.Equals("yes");



        DateTime orderDate = DateTime.Now;

        conn = new SqlConnection(SQLConnectionString.getConnectionString());

        //string query = "INSERT INTO Order ([OrderDate],[PaymentDate],[ShipperID],[ShipmentDate],[SalesTax],[SalesTaxStatus],[UserID],[OrderStatus],[NumberOfBooks],[CreditCardPurchase],[DebitCardPurchase],[CashPurchase],[CardID],[UserName],[TotalPrice],[PaymentID]) VALUES (@OrderDate,@PaymentDate,@ShipperID,@ShipmentDate,@SalesTax,@SalesTaxStatus,@UserID,@OrderStatus,@NumberOfBooks,@CreditCardPurchase,@DebitCardPurchase,@CashPurchase,@CardID,@UserName,@TotalPrice,@PaymentID)";
        string query = "INSERT INTO [dbo].[Order]" + 
           "([OrderDate]" +
           ",[PaymentDate]" +
           ",[ShipperID]" +
           ",[ShipmentDate]" +
           ",[SalesTax]" +
           ",[SalesTaxStatus]" +
           ",[UserID]" +
           ",[OrderStatus]" +
           ",[NumberOfBooks]" +
           ",[CreditCardPurchase]" +
           ",[DebitCardPurchase]"+
           ",[CashPurchase]"+
           ",[CardID]"+
           ",[UserName]"+
           ",[TotalPrice]"+
           ",[PaymentID])"+
     "VALUES" +
           "(@OrderDate"+
           ",@PaymentDate"+
           ",@ShipperID" +
           ",@ShipmentDate" +
           ",@SalesTax" +
           ",@SalesTaxStatus" +
           ",@UserID" +
           ",@OrderStatus" +
           ",@NumberOfBooks" +
           ",@CreditCardPurchase" +
           ",@DebitCardPurchase" +
           ",@CashPurchase" +
           ",@CardID" +
           ",@UserName" +
           ",@TotalPrice" +
           ",@PaymentID)";

        command = new SqlCommand("spCompleteOrder", conn);
        command.CommandType = CommandType.StoredProcedure;

        //command = new SqlCommand(query, conn);

                command.Parameters.Add("@OrderDate", SqlDbType.DateTime).Value          = orderDate;
                command.Parameters.Add("@PaymentDate", SqlDbType.DateTime).Value        = DateTime.Now;
                command.Parameters.Add("@ShipperID", SqlDbType.Int).Value               = 1;
                command.Parameters.Add("@ShipmentDate", SqlDbType.Date).Value           = DateTime.Now;
                command.Parameters.Add("@SalesTax", SqlDbType.Int).Value                = 30;
                command.Parameters.Add("@SalesTaxStatus", SqlDbType.NVarChar).Value     = "Taxed";
                command.Parameters.Add("@UserID", SqlDbType.Int).Value                  = 1;
                command.Parameters.Add("@OrderStatus", SqlDbType.NVarChar).Value        = "ordered";
                command.Parameters.Add("@NumberOfBooks", SqlDbType.Int).Value           = 400;
                command.Parameters.Add("@CreditCardPurchase", SqlDbType.NVarChar).Value = "Yes";
                command.Parameters.Add("@DebitCardPurchase", SqlDbType.NVarChar).Value  = "Yes";
                command.Parameters.Add("@CashPurchase", SqlDbType.NVarChar).Value       = "Yes";
                command.Parameters.Add("@CardID", SqlDbType.Int).Value                  = 1;
                command.Parameters.Add("@UserName", SqlDbType.VarChar).Value            = username;
                command.Parameters.Add("@TotalPrice", SqlDbType.Decimal).Value          = 123;
                command.Parameters.Add("@PaymentID", SqlDbType.Int).Value               = 1;
            try
            {
                conn.Open();
                command.ExecuteNonQuery();
            }
            catch (SqlException sqlErr)
            {
                Debug.Write(sqlErr);
                Response.Write(sqlErr);
                Debug.Write(sqlErr.Message);
            }
            catch (Exception excpt)
            {
                Debug.Write(excpt.StackTrace);
                Response.Write(excpt);
                Debug.Write(excpt.Message);
            }
            finally
            {
                conn.Close();
            }       
    }

    protected void btnCompleteBookOrder_Click(object sender, EventArgs e)
    {
        placeOrder();
        Response.Redirect("PurchaseConfirmation.aspx");
    }

    protected void rdbPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!(rdbPaymentMethod.SelectedIndex.Equals(0)))
        {
            lblCardData.Visible = true;
            txtCardNumber.Visible = true;
            lblCardData.EnableViewState.Equals(true);
            txtCardNumber.EnableViewState.Equals(true);
        }
    }
}