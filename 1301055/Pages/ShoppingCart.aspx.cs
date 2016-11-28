using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    CartItemList bookItemList;
    Order order = new Order();
    Account userAccountSessionTracker = new Account();
    Book book = new Book();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        userAccountSessionTracker = (Account)HttpContext.Current.Session["User"];
   
        bookItemList        = CartItemList.GetCart();
        lblTotalPrice.Text  = HttpContext.Current.Session["OrderTotalAmount"].ToString();
        order.TotalAmount   = Convert.ToDecimal(lblTotalPrice.Text);

        if (!IsPostBack)
        {
            order.TotalAmount = Convert.ToDecimal(lblTotalPrice.Text);
            displayList();
        }
        else
        {

        }
    }

    private void displayList()
    {
        Book book;
        listBoxBookList.Items.Clear();

        for (int i = 0; i < bookItemList.Count; i++)
        {
            book = bookItemList[i];
            listBoxBookList.Items.Add(book.Display());
        }
    }

    protected void btnRemoveItem_Click(object sender, EventArgs e)
    {
        if (bookItemList.Count > 0 && (listBoxBookList.SelectedIndex != -1))
        {
            bookItemList.RemoveAt(listBoxBookList.SelectedIndex);
            lblTotalPrice.Text = (order.TotalAmount * 2).ToString();
            //order.TotalAmount = order.TotalAmount - bookItemList[listBoxBookList.SelectedIndex].UnitPrice * bookItemList[listBoxBookList.SelectedIndex].Quantity;  //Convert.ToDecimal(listBoxBookList.SelectedValue);
            //lblTotalPrice.Text = order.TotalAmount.ToString();

            displayList();
        }
        else
        {

        }

    }

    protected void btnClearItems_Click(object sender, EventArgs e)
    {
        bookItemList.Clear();
        order.TotalAmount = 0;
        lblTotalPrice.Text = "0";
        displayList();
    }

    protected void btnPorceedToCheckOut_Click(object sender, EventArgs e)
    {
        userAccountSessionTracker = (Account)HttpContext.Current.Session["User"];
        HttpContext.Current.Session["OrderTotalAmount"] = lblTotalPrice.Text;
        Response.Redirect("CompleteOrder.aspx");
    }

    protected void btnAddAnotherItem_Click(object sender, EventArgs e)
    {        
        userAccountSessionTracker = (Account)HttpContext.Current.Session["User"];
        Response.Redirect("PurchasePage.aspx");
    }
}