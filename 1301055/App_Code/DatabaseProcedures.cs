using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatabaseProcedures
/// </summary>


[DataObject(true)]
public class DatabaseProcedures
{
    private SqlConnection conn = null;
    private SqlCommand command = null;
    Account userAccount1 = new Account();

    public DatabaseProcedures()
    {
        conn = new SqlConnection(SQLConnectionString.getConnectionString());
    }

    public void Insert(Account acc)
    {
        try
        {
            userAccount1 = acc;
            string accessLevel = "user";
            command = new SqlCommand("spCreateUserAccount", conn);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = userAccount1.UserName;
            command.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = userAccount1.FirstName;
            command.Parameters.Add("@LastName", SqlDbType.VarChar).Value = userAccount1.LastName;
            command.Parameters.Add("@Email", SqlDbType.VarChar).Value = userAccount1.Email;
            command.Parameters.Add("@DateJoined", SqlDbType.Date).Value = DateTime.Now;
            command.Parameters.Add("@Password", SqlDbType.VarChar).Value = userAccount1.Password;
            command.Parameters.Add("@Country", SqlDbType.VarChar).Value = userAccount1.Country;
            command.Parameters.Add("@AccessLevel", SqlDbType.VarChar).Value = accessLevel;

            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception excpt)
        {
            Debug.Write(excpt.Message);
        }
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetProductsByCategory(string CategoryName, SqlConnection con)
    {
        con = new SqlConnection(SQLConnectionString.getConnectionString());
        string storedProcedureName = "spGetBookDetails";
        SqlCommand cmd = new SqlCommand(storedProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@SelectedBook", SqlDbType.NVarChar).Value = CategoryName;
        con.Open();
        SqlDataReader dataReader = cmd.ExecuteReader();
        return dataReader;
    }

    public void Update(string bkTitle, string author, string shDes, string lngDes, string imgFile, int category, string isbn, string status, string rating,
                decimal unitPrice, decimal preorderPrice,
                int discount, string printLength, int quantity)
    {
        try
        {
            conn = new SqlConnection(SQLConnectionString.getConnectionString());

            string storedProcedureName = "spUpdateBookInformation";
            SqlCommand cmd = new SqlCommand(storedProcedureName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@Id", 2);
            cmd.Parameters.AddWithValue("@Title", bkTitle);
            cmd.Parameters.AddWithValue("@Author", author);
            cmd.Parameters.AddWithValue("@CategoryID", category);
            cmd.Parameters.AddWithValue("@ISBN", isbn);
            cmd.Parameters.AddWithValue("@BookStatus", status);
            cmd.Parameters.AddWithValue("@Rating", rating);
            cmd.Parameters.AddWithValue("@UnitPrice", unitPrice);
            cmd.Parameters.AddWithValue("@PreOrderPrice", preorderPrice);
            cmd.Parameters.AddWithValue("@Discount", discount);
            cmd.Parameters.AddWithValue("@PrintLength", printLength);
            cmd.Parameters.AddWithValue("@Quantity", quantity);
            cmd.Parameters.AddWithValue("@ShortDescription", shDes);
            cmd.Parameters.AddWithValue("@LongDescription", lngDes);
            cmd.Parameters.AddWithValue("@ImageFile", imgFile);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception excpt)
        {
            Debug.Write(excpt.Message);
            Console.Write(excpt.Message);
        }
    }

    public void Delete(string title)
    {
        DataTable bookInformation = new DataTable();
        try
        {
            conn = new SqlConnection(SQLConnectionString.getConnectionString());
            command = new SqlCommand();
            command.Connection = conn;
            string storedProc = "spDeleteBook";
            command.CommandText = storedProc;
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Title", title);

            conn.Open();
            command.ExecuteNonQuery();
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
}