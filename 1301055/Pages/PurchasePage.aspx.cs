using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PurchasePage : System.Web.UI.Page
{

    public SqlConnection conn      = null;
    public SqlCommand command      = null;

    Book bookItem           = new Book();
    Account acc             = new Account();
    Order order             = new Order();
    CartItemList bookItemList;
    private Book book;

    protected void Page_Load(object sender, EventArgs e)
    {

        acc.UserName = Session["AccountUserName"].ToString();
        if (!IsPostBack)
        {
            Account userAccountSessionTracker   = new Account();
            userAccountSessionTracker           = (Account)HttpContext.Current.Session["User"];
            lblUserNameNav.Text = acc.UserName;
            loadCategoriesFromDatabase();
            toggleImagePanel(false);
        }
        else if (IsPostBack)
        {           
            bookItemList = CartItemList.GetCart();

            if ((ddlBookName.SelectedIndex <= 0 || ddlBookCategory.SelectedIndex <=0) 
                                                || (ddlBookName.SelectedIndex <= 0 && ddlBookCategory.SelectedIndex <= 0))
            {
                toggleImagePanel(false);
            }
            else
            {
                toggleImagePanel(true);
            }
        }
    }

    #region
    private Book GetSelectedBook()
    {
        //DataView bookTable = new DataView();

        //bookTable.RowFilter = "BookID = '" + (ddlBookName.SelectedValue) + "'";

        //DataRowView row = (DataRowView)bookTable[0];

        Book bk = new Book();
        //bk.BookID                           = (int)(row["BookID"]);
        //bk.Quantity                         = (int)row["Quantity"];
        //bk.Discount                         = (int)row["Discount"];
        //bk.PrintLength                      = (int)row["PrintLength"];
        //bk.UnitPrice                        = (decimal)row["UnitPrice"];
        //bk.PreOrderPrice                    = (decimal)row["PreOrderPrice"];
        //bk.PublicationDate                  = (DateTime)row["PublicationDate"];
        //bk.BookTitle                        = (String)row["Title"].ToString();
        //bk.BookAuthor                       = (String)row["Auhtor"].ToString();
        //bk.BookPublisher                    = (String)row["Title"].ToString();
        //bk.ImgageFile                       = (String)row["ImageFile"].ToString();
        //bk.LongDescription                  = (String)row["LongDescription"].ToString();
        //bk.ShortDescription                 = (String)row["ShortDescription"].ToString();
        //bk.Status                           = (String)row["Status"].ToString();
        //bk.Rating                           = (String)row["Rating"].ToString();
        //bk.InternationalStandardBookNumber  = (String)row["ISBN"].ToString();

        return bk;
    }

    private void buttonController(bool value)
    {
        btnAddBookItem.Enabled.Equals(value);
    }

    /// <summary>
    /// Loads the book categories from database
    /// </summary>
    private void loadCategoriesFromDatabase()
    {
        DataTable category = new DataTable();

        using (conn = new SqlConnection(SQLConnectionString.getConnectionString()))
        {
            try
            {
                SqlDataAdapter categoryDataAdapter = new SqlDataAdapter("spSelectCategories", conn);

                categoryDataAdapter.Fill(category);

                ddlBookCategory.DataSource      = category;
                ddlBookCategory.DataTextField   = "CategoryName";
                ddlBookCategory.DataValueField  = "CategoryName";
                ddlBookCategory.DataBind();

            }
            catch (SqlException sqlErr)
            {
                Debug.Write(sqlErr.Message);
                Debug.Write(sqlErr.StackTrace);
            }
            catch (Exception excpt)
            {
                Debug.Write(excpt.Message);
                Debug.Write(excpt.StackTrace);
            }
            finally
            {
                conn.Close();
            }
        }

        ddlBookCategory.Items.Insert(0, new ListItem("Select Item", "NA"));

    }



    /// <summary>
    /// User Account Class
    /// </summary>
    protected void ddlBookCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable bookTitle = new DataTable();
        try
        {
            using (conn = new SqlConnection(SQLConnectionString.getConnectionString()))
            {

                command = new SqlCommand();
                command.Connection = conn;
                command.CommandText = "spGetBooksBySelectedCategory";
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@SelectedCategory", ((ddlBookCategory.SelectedIndex) + 1));

                SqlDataAdapter bookDataAdapter = new SqlDataAdapter(command);
                bookDataAdapter.Fill(bookTitle);

                ddlBookName.DataSource = bookTitle;
                ddlBookName.DataTextField = "Title";
                ddlBookName.DataValueField = "Title";
                ddlBookName.DataBind();
            }
        }
        catch (SqlException sqlErr)
        {
            Debug.Write(sqlErr.Message);
            Debug.Write(sqlErr.StackTrace);
        }
        catch (Exception excpt)
        {
            Debug.Write(excpt.Message);
            Debug.Write(excpt.StackTrace);
        }
        finally
        {
            command.Connection.Close();
            conn.Close();
        }
        ddlBookName.Items.Insert(0, new ListItem("Select Item", "NA"));

    }


    protected void ddlBookName_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable bookInformation = new DataTable();
        try
        {
            using (conn = new SqlConnection(SQLConnectionString.getConnectionString()))
            {

                command = new SqlCommand();
                command.Connection = conn;
                string storedProc = "spSelectItemsQuantity";
                command.CommandText = storedProc;
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Title", ddlBookName.SelectedItem.Text.ToString());

                SqlDataAdapter bookDataAdapter = new SqlDataAdapter(command);

                bookDataAdapter.Fill(bookInformation);

                detailsViewBooks.DataSource = bookInformation;
                detailsViewBooks.DataBind();

                toggleImagePanel(true);
                updateBookImagePanel();
            }            

        }
        catch (SqlException sqlErr)
        {
            Debug.Write(sqlErr.Message);
            Debug.Write(sqlErr.StackTrace);
        }
        catch (Exception excpt)
        {
            Debug.Write(excpt.Message);
            Debug.Write(excpt.StackTrace);
        }
        finally
        {
            command.Connection.Close();
            conn.Close();
        }

    }
    #endregion

    #region
    private void updateBookImagePanel()
    {
        try
        {
                SqlDataReader dataReader = (SqlDataReader)DatabaseProcedures.GetProductsByCategory((ddlBookName.SelectedItem.Text.ToString().Trim()), conn);

                while (dataReader.Read())
                {
                    lblBookTitle.Text           = dataReader["Title"].ToString();
                    lblUnitPrice.Text           = "$" + dataReader["UnitPrice"].ToString();
                    lblShortDescription.Text    = dataReader["ShortDescription"].ToString();
                    lblLongDescription.Text     = dataReader["LongDescription"].ToString();
                    lblBookAuthor.Text          = dataReader["Author"].ToString();
                    lblBookRating.Text          = dataReader["Rating"].ToString() + " stars";
                    imgBookImage.ImageUrl       = "../images/books/computer_books/" + dataReader["ImageFile"].ToString().Trim();
                    lblDiscount.Text            = dataReader["Discount"].ToString() + "%";
                    lblPreorder.Text            = "$" + dataReader["PreOrderPrice"].ToString();
                    lblPrintLength.Text         = dataReader["PrintLength"].ToString() + " pages";
                }

                dataReader.Close();
                conn.Close();
        }
        catch (SqlException sqlErr)
        {
            //Response.Write(sqlErr);
            Debug.Write(sqlErr.Message);
        }
        catch (Exception excpt)
        {
            Debug.Write(excpt.StackTrace);
        }
        finally
        {
            conn.Close();
        }

    }

    private void toggleImagePanel(Boolean value)
    {
        bookPanel.Visible = value;
    }
    #endregion


    #region  
    protected void btnAddBookItem_Click(object sender, EventArgs e)
    {
        try
        {

            using (conn = new SqlConnection(SQLConnectionString.getConnectionString()))
            {
                string storedProc           = "spGetAllInformationForSingleBook";
                command                     = new SqlCommand();
                command.Connection          = conn;
                command.CommandText         = storedProc;
                command.CommandType         = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Title", detailsViewBooks.Rows[0].Cells[1].Text.ToString().Trim());

                conn.Open();

                SqlDataReader dataReader = command.ExecuteReader(CommandBehavior.CloseConnection);

                while (dataReader.Read())
                {
                    bookItem.BookTitle = detailsViewBooks.Rows[0].Cells[1].Text.ToString();
                    bookItem.Quantity = Int32.Parse(txtQuantity.Text.ToString().Trim());
                    bookItem.UnitPrice = Convert.ToDecimal(dataReader["UnitPrice"]);
                    appendToListBox();
                }
            }
        }
        catch (SqlException sqlErr)
        {
            Debug.Write(sqlErr.Message);
            Debug.Write(sqlErr.StackTrace);
        }
        catch (Exception excpt)
        {
            Debug.Write(excpt.Message);
            Debug.Write(excpt.StackTrace);
        }
        finally
        {
            conn.Close();
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
        listBoxBookList.Items.Clear();

        for (int i = 0; i < bookItemList.Count; i++)
        {
            book                = bookItemList[i];
            order.TotalAmount   = order.TotalAmount + bookItemList[i].UnitPrice;
            listBoxBookList.Items.Add(book.Display());
        }
    }

    protected void btnRemoveItem_Click(object sender, EventArgs e)
    {
        if (bookItemList.Count > 0 && (listBoxBookList.SelectedIndex != -1))
        {
            bookItemList.RemoveAt(listBoxBookList.SelectedIndex);
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


    protected void btnGoToCart_Click(object sender, EventArgs e)
    {
        int totalNumberOfBooks = 0;
        for (int i=0; i < bookItemList.Count; i++)
        {
            order.TotalAmount += (bookItemList[i].UnitPrice * bookItemList[i].Quantity);
            totalNumberOfBooks += bookItemList[i].Quantity;
        }
        Session["UserName"] = acc.UserName;
        Session["OrderTotalAmount"] = order.TotalAmount;
        Session["NumberOfBooks"] = totalNumberOfBooks;
        Response.Redirect("ShoppingCart.aspx");
    }
  


    protected void btnProceedToCheckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("CompleteOrder.aspx");
    }

    #endregion
}