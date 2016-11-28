using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{
    public CartItem()
    {

    }

    public CartItem(Book book, int quantity)
    {
        this.Book = book;
        this.Quantity = quantity;
    }

    public Book Book { get; set; }
    public int Quantity { get; set; }

    public DateTime Date { get; set; }

    public void AddQuantity(int quantity)
    {
        this.Quantity += quantity;
    }

    public string Display()
    {
        string displayString =
            Book.BookTitle + " (" + Quantity.ToString()
            + " at " + Book.UnitPrice.ToString("c") + " each)";

        return displayString;
    }


}