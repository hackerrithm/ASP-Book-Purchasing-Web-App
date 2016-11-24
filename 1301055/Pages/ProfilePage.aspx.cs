using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class ProfilePage : System.Web.UI.Page
{
    SqlConnection conn              = null;
    SqlCommand command              = null;
    Book bookItem                   = new Book();
    Account acc                     = new Account();
    Order order                     = new Order();
    CartItemList bookItemList;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblCardData.Visible         = false;
        txtCardNumber.Visible       = false;
        toggleImagePanel(false);

        bookItemList = CartItemList.GetCart();

        if(!IsPostBack)
        {
            lblProfileName.Text = Session["AccountUserName"].ToString().Trim();
            loadCategoriesFromDatabase();
            
            toggleImagePanel(true);
        }

        imgBookImage.ImageUrl = "images/book5-c.jpg";


    }
 


    /// <summary>
    /// Loads the book categories from database
    /// </summary>
    private void loadCategoriesFromDatabase()
    {
        DataTable category = new DataTable();

        using (SqlConnection con = new SqlConnection(SQLConnectionString.getConnectionString()))
        {
            try
            {
                SqlDataAdapter categoryDataAdapter = new SqlDataAdapter("spSelectCategories", con);

                categoryDataAdapter.Fill(category);

                ddlBookCategory.DataSource          = category;
                ddlBookCategory.DataTextField       = "CategoryName";
                ddlBookCategory.DataValueField      = "CategoryName";
                ddlBookCategory.DataBind();

            }
            catch(SqlException sqlErr)
            {
                Debug.Write(sqlErr.Message);
                Debug.Write(sqlErr.StackTrace);
            }
            catch(Exception excpt)
            {
                Debug.Write(excpt.Message);
                Debug.Write(excpt.StackTrace);
            }
        }
      
    }



    /// <summary>
    /// User Account Class
    /// </summary>
    protected void ddlBookCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable bookTitle = new DataTable();

        using (SqlConnection con = new SqlConnection(SQLConnectionString.getConnectionString()))
        {
            try
            {
                string query = "SELECT Title FROM Book WHERE CategoryID='" + ((ddlBookCategory.SelectedIndex)+1) + "' ";

                SqlDataAdapter bookDataAdapter = new SqlDataAdapter(query, con);

                bookDataAdapter.Fill(bookTitle);

                ddlBookName.DataSource = bookTitle;
                ddlBookName.DataTextField = "Title";
                ddlBookName.DataValueField = "Title";
                ddlBookName.DataBind();

            }
            catch (SqlException sqlErr)
            {
                Debug.Write(sqlErr.StackTrace);
                Debug.Write(sqlErr.Message);
            }
        }
        
    }

    protected void ddlBookName_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable bookInformation = new DataTable();

        using (SqlConnection con = new SqlConnection(SQLConnectionString.getConnectionString()))
        {
            try
            {
                string query = "SELECT Title,Quantity FROM Book WHERE Title=@Title";

                SqlDataAdapter bookDataAdapter = new SqlDataAdapter(query, con);
                bookDataAdapter.SelectCommand.Parameters.AddWithValue("@Title", ddlBookName.SelectedItem.Text.ToString());
                bookDataAdapter.Fill(bookInformation);

                detailsViewBooks.DataSource = bookInformation;
                detailsViewBooks.DataBind();
                toggleImagePanel(true);

            }
            catch (SqlException sqlErr)
            {
                Response.Write(sqlErr);
                Debug.Write(sqlErr.Message);
            }
            catch (Exception excpt)
            {
                Response.Write(excpt.StackTrace);
            }
        }
        
    }

    private void toggleImagePanel(Boolean value)
    {
        bookPanel.Visible = value;
    }

    protected void btnAddBookItem_Click(object sender, EventArgs e)
    {
        try
        {

            using (SqlConnection con = new SqlConnection(SQLConnectionString.getConnectionString()))
            {
                string query = "SELECT * FROM Book WHERE Title=@Title";

                SqlCommand command1 = new SqlCommand(query, con);

                command1.Parameters.AddWithValue("@Title", detailsViewBooks.Rows[0].Cells[1].Text.ToString().Trim());

                
                con.Open();

                SqlDataReader dataReader = command1.ExecuteReader(CommandBehavior.CloseConnection);

                while (dataReader.Read())
                {
                    bookItem.BookTitle = detailsViewBooks.Rows[0].Cells[1].Text.ToString();
                    bookItem.Quantity = Int32.Parse(txtQuantity.Text.ToString().Trim());
                    appendToListBox();
                }

                con.Close();
            }
        }
        catch(Exception excptn)
        {
            Response.Write(excptn);
            Debug.Write(excptn.Message);
        }
    }

    /// <summary>
    /// User Account Class
    /// </summary>
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

    private void appendToListBox()
    {
        bookItemList.AddToOrder(bookItem);

        displayList();
    }

    private void displayList()
    {
        Book book;

        listBoxBooks.Items.Clear();

        for (int i = 0; i < bookItemList.Count; i++)
        {
            book = bookItemList[i];

            listBoxBooks.Items.Add(book.Display());
        }
    }

    protected void btnRemoveItem_Click(object sender, EventArgs e)
    {
        if (bookItemList.Count > 0 && (listBoxBooks.SelectedIndex != -1))
        {
            bookItemList.RemoveAt(listBoxBooks.SelectedIndex);
            displayList();
        }
        else
        {

        }

    }

    protected void btnClearItems_Click(object sender, EventArgs e)
    {
        bookItemList.Clear();
        displayList();
    }

    protected void btnEditProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProfile.aspx");
    }


    /// <summary>
    /// User Account Class
    /// </summary>
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int quantityValue = Convert.ToInt32(txtQuantity.Text.ToString());
        if (quantityValue < 0)
            quantityValue = (quantityValue * -1);

        order.OrderFirstName = txtFirstName.Text.ToString().Trim();
        order.OrderLastName = txtLastName.Text.ToString().Trim();
        order.OrderUserName = Session["AccountUserName"].ToString().Trim();
        order.TotalAmount = quantityValue;
        order.OrderDestinationAddress = acc.Country + acc.City;

        acc.BookName = ddlBookName.SelectedItem.ToString().Trim();
        acc.PaymentMethod = rdbPaymentMethod.SelectedItem.ToString();

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


        if (chkbxSignUp.Checked)
        {
            acc.Newsletter = true;
        }
        else
        {
            acc.Newsletter = false;
        }

        decimal billPrice = acc.calculateBill(acc.BookName, quantityValue);

        Session["firstName"] = order.OrderFirstName;
        Session["lastName"] = order.OrderLastName;
        Session["NameOfBook"] = order.OrderedBooks;
        Session["Quantity"] = order.TotalAmount;
        Session["paymentMethod"] = acc.PaymentMethod;
        Session["newsletter"] = acc.Newsletter;
        Session["billPrice"] = "$" + billPrice.ToString().Trim();

        Response.Redirect("Receipt.aspx");
    }

}