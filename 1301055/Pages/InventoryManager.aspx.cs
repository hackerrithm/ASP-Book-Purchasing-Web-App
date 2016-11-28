using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InventoryManager : System.Web.UI.Page
{

    public SqlConnection conn = null;
    public SqlCommand command = null;

    Book bookItem = new Book();
    Account acc = new Account();
    Order order = new Order();
    CartItemList bookItemList;
    private Book book;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            loadBooksFromDatabase();
        loadBooksFromDatabase();
    }

    private void loadBooksFromDatabase()
    {
        DataTable book = new DataTable();

        using (conn = new SqlConnection(SQLConnectionString.getConnectionString()))
        {
            try
            {
                SqlDataAdapter bookDataAdapter = new SqlDataAdapter("spGetAllBooks", conn);

                bookDataAdapter.Fill(book);

                ddlBooksList.DataSource = book;
                ddlBooksList.DataTextField = "Title";
                ddlBooksList.DataValueField = "Title";
                ddlBooksList.DataBind();

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

        ddlBooksList.Items.Insert(0, new ListItem("Select Item", "NA"));

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        //DataTable bookInformation = new DataTable();
        //try
        //{
        //    conn = new SqlConnection(SQLConnectionString.getConnectionString());


        //    command = new SqlCommand();
        //    command.Connection = conn;
        //    string storedProc = "spDeleteBook";
        //    command.CommandText = storedProc;
        //    command.CommandType = CommandType.StoredProcedure;
        //    command.Parameters.AddWithValue("@Title", ddlBooksList.SelectedItem.Text.ToString());

        //    conn.Open();
        //    command.ExecuteNonQuery();



        //}
        //catch (SqlException sqlErr)
        //{
        //    Debug.Write(sqlErr.Message);
        //    Debug.Write(sqlErr.StackTrace);
        //}
        //catch (Exception excpt)
        //{
        //    Debug.Write(excpt.Message);
        //    Debug.Write(excpt.StackTrace);
        //}
        //finally
        //{
        //    conn.Close();
        //}

        DatabaseProcedures db = new DatabaseProcedures();

        db.Delete(ddlBooksList.SelectedItem.Text.ToString());
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {

        DatabaseProcedures db = new DatabaseProcedures();

        db.Update(ddlBooksList.SelectedItem.Text.ToString(), txtBookAuthor.Text.ToString(), txtShortDescription.Text.ToString(), txtLongDescription.Text.ToString(),
                txtImageFile.Text.ToString(), Convert.ToInt32(txtCategoryID.Text), txtISBN.Text.ToString(), txtBookStatus.Text.ToString(),
                txtRating.Text.ToString(), Convert.ToDecimal(txtUnitPrice.Text), Convert.ToDecimal(txtPreOrder.Text), Convert.ToInt32(txtDiscount.Text.ToString()),
                (txtPrintLength.Text.ToString()), Convert.ToInt32(txtQuantity.Text.ToString()));

        /*
        conn = new SqlConnection(SQLConnectionString.getConnectionString());

        string storedProcedureName = "spUpdateBookInformation";
        SqlCommand cmd = new SqlCommand(storedProcedureName, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@Id", 2);
        cmd.Parameters.AddWithValue("@Title", ddlBooksList.SelectedItem.Text.ToString());
        cmd.Parameters.AddWithValue("@Author", txtBookAuthor.Text.ToString());
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();*/
    }
}