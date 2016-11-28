using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
    public int      BookID { get; set; }
    public int      PrintLength { get; set; }
    public int      Quantity { get; set; }
    public decimal totalPrice { get; set; }
    public double   Discount { get; set; }
    public string   BookTitle { get; set; }
    public string   BookAuthor { get; set; }
    public string   BookPublisher { get; set; }
    public string   BookCategory { get; set; }
    public string   ShortDescription { get; set; }
    public string   LongDescription { get; set; }
    public string   Status { get; set; }
    public string   InternationalStandardBookNumber { get; set; }
    public string   Rating { get; set; }
    public string   ImgageFile { get; set; }
    public decimal  UnitPrice { get; set; }
    public decimal  PreOrderPrice {get;set;}
    public DateTime PublicationDate { get; set; }


    public Book()
    {

    }

    public Book(string bkTitle, string author, string publisher, string category, string isbn, string status, string rating, 
                decimal unitPrice, decimal preorderPrice,
                double discount, int printLength, int quantity)
    {
        this.BookTitle = bkTitle;
        this.BookAuthor = author;
        this.BookPublisher = publisher;
        this.BookCategory = category;
        this.InternationalStandardBookNumber = isbn;
        this.Status = status;
        this.Rating = rating;
        this.UnitPrice = unitPrice;
        this.PreOrderPrice = preorderPrice;
        this.Discount = discount;
        this.PrintLength = printLength;
        this.Quantity = quantity;
    }

    public void AddQuantity(int quantity)
    {
        this.Quantity += quantity;
    }

    public void AddUnitPrices(decimal unitPrice)
    {
        this.totalPrice += unitPrice;
    }


    public string Display1()
    {
        return this.Quantity + "-" + this.BookTitle + "(s)";
    }

    public string Display()
    {
        string displayString =
            this.BookTitle + " (" + Quantity.ToString()
            + " at " + this.UnitPrice.ToString("c") + " each)";

        return displayString;
    }

    public int NumberOfBooks()
    {
        return Quantity;
    }
}