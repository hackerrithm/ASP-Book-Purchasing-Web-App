using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security;
using System.Text;

/// <summary>
/// User Account Class
/// </summary>
public class Account
{
    public int    UserID { get; set; }                     
    
    //Personal Information               
    public string UserName { get; set; }
    public string FirstName { get; set; }
    public string MiddleName { get; set; }
    public string LastName { get; set; }
    public string Password { get; set; }
    public string Email { get; set; }

    //Card Information
    public string CreditCardNumber { get; set; }
    public string DebitCardNumber { get; set; }
    public string PaymentMethod { get; set; }
    public decimal Wallet { get; set; }                 // Amount of money user has in cash

    // Country
    public string Country { get; set; }
    public string City { get; set; }
    public string ZipCode { get; set; } 

    //Account Specific
    public string AccessLevel { get; set; }
    public string BookName { get; set; }
    public string Status { get; set; }
    public DateTime DateJoined { get; set; }
    public Boolean  Newsletter { get; set; }
    public int    Quantity { get; set; }




    //Default Constructor
    public Account()
    {

    }

    //Primary Constructor
    public Account(string usrname, string fname, string lname, string mName, string pwd, string emailAddr,
                    string credNumb, string debNumb, string city, string zpCode, string cntry, int quant,
                    string paymnt, DateTime dateJoined, Boolean newslettr)
    {
        PasswordHash hashPwd = new PasswordHash();

        this.UserName = usrname;
        this.FirstName = fname;
        this.MiddleName = mName;
        this.LastName = lname;
        this.Password = hashPwd.passwordHasher(pwd);
        this.Email = emailAddr;
        this.ZipCode = zpCode;
        this.City = city;
        this.Country = cntry;
        this.Quantity = quant;
        this.PaymentMethod = paymnt;
        this.Newsletter = newslettr;
    }


    public decimal calculateBill(string bkName, int quant)
    {
        decimal result = 0;
        
        return result;
    }
}