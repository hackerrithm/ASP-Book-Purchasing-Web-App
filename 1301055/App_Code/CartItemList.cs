using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItemList
/// </summary>
public class CartItemList
{
    private List<Book> bookItems;

    public CartItemList()
    {
        bookItems = new List<Book>();
    }

    public int Count
    {
        get { return bookItems.Count; }
    }

    public Book this[int index]
    {
        get { return bookItems[index]; }
        set { bookItems[index] = value; }
    }

    public Book this[string id]
    {
        get
        {
            foreach (Book c in bookItems)
                if (c.BookID.ToString().Trim() == id) return c;
            return null;
        }
    }

    public static CartItemList GetCart()
    {
        CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
        if (cart == null)
            HttpContext.Current.Session["Cart"] = new CartItemList();
        return (CartItemList)HttpContext.Current.Session["Cart"];
    }

    public void AddToOrder(Book bk)
    {
        bookItems.Add(bk);
    }

    public void AddItem(string book, string author, string publisher, string category, string isbn, string status, string rating,
                        decimal unitPrice, decimal preorderPrice,
                        double discount, int printLength, int quantity)
    {
        Book c = new Book(book, author, publisher, category, isbn, status, rating, unitPrice, preorderPrice, discount, printLength, quantity);
        bookItems.Add(c);
    }

    public void RemoveAt(int index)
    {
        bookItems.RemoveAt(index);
    }

    public void Clear()
    {
        bookItems.Clear();
    }
}