<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Receipt</title>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <!--Import materialize.css-->
      <link href="../Content/materialize/css/materialize.min.css" rel="stylesheet" />
      <link href="../Content/custom-styles/Receipt-StyleSheet.css" rel="stylesheet" />
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card card-panel hoverable z-depth-3 col s12">
                <h4 class="big center-align"><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>, here is your receipt so far.</h4>
                <hr class="amber" />
                                <div class="row">
                                    <div class="col s6">
                                        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                                        <asp:TextBox ID="txtFirstName" runat="server" Enabled="false" CssClass="blue-text darken-1"></asp:TextBox>
                                    </div>
                                    <div class="col s6">
                                        <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                                        <asp:TextBox ID="txtLastName" runat="server" Enabled="false" CssClass="blue-text darken-1"></asp:TextBox>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col s6">
                                        <asp:Label ID="lblNameOfBook" runat="server" Text="Name of Book:"></asp:Label>
                                        <asp:TextBox ID="txtBookName" runat="server" Enabled="false" CssClass="blue-text darken-1"></asp:TextBox>
                                    </div>

                                    <div class="col s6">
                                        <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>
                                        <asp:TextBox ID="txtQuantity" runat="server" Enabled="false" CssClass="blue-text darken-1"></asp:TextBox>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col s6">
                                        <asp:Label ID="lblNewsLetter" runat="server" Text="Signed up for Newsletter?  "></asp:Label>
                                        <asp:TextBox ID="txtNewsletter" runat="server" Enabled="false" CssClass="blue-text darken-1"></asp:TextBox>
                                    </div>
                                    <div class="col s6">
                                        <asp:Label ID="Label1" runat="server" Text="Books:"></asp:Label>
                                        <asp:ListBox ID="listboxBooksOnOrder" runat="server" CssClass="browser-default">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                        </asp:ListBox>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col s6">
                                        <asp:Label ID="lblPaymentMethod" runat="server" Text="PaymentMethod:"></asp:Label>
                                        <asp:TextBox ID="txtPaymentMethod" runat="server" Enabled="false" CssClass="blue-text darken-1"></asp:TextBox>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col s6">
                                        <asp:Label ID="lblTotalPrice" runat="server" Text="Total Price:"></asp:Label>
                                        <asp:TextBox ID="txtTotalBill" runat="server" Enabled="false" CssClass="blue-text darken-1"></asp:TextBox>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col s6">
                                        <asp:Button ID="btnBack" Text="Re-Enter" runat="server" CssClass="btn btn-large red white-text" OnClick="btnBack_Click" />

                                    </div>
                                    <div class="col s6">
                                        <asp:Button ID="btnConfirmReceiptData" Text="Confirm" runat="server" CssClass="btn btn-large green lighten-2 white-text" OnClick="btnConfirmReceiptData_Click"/>

                                    </div>
                                </div>

            </div>

        </div>
    </form>
    <script src="../Scripts/materialize/materialize.js"></script>
    <script src="../Scripts/jquery-3.1.1.js"></script>
</body>

</html>
