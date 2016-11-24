using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Order
/// </summary>
public class Order
{
    public int OrderID { get; set; }
    public DateTime OrderDate { get; set; }
    public decimal TotalAmount { get; set; }
    public bool CreditCardPurchase { get; set; }
    public bool DebitCardPurchase { get; set; }
    public bool CashPurchase { get; set; }
    public string CardNumber { get; set; }
    public string OrderUserName { get; set; }
    public string OrderFirstName { get; set; }
    public string OrderLastName { get; set; }
    public string OrderDestinationAddress { get; set; }
    public string OrderedBooks { get; set; }


    public Order()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void updateTotalPrice(decimal unitPrice)
    {
        this.TotalAmount = unitPrice;
    }
}