<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/custom-styles/Account-Page-StyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navbar -->
        <nav class="navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="ProfilePage.aspx">Reacthead</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a><span class="glyphicon glyphicon-bitcoin"></span>Another</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>List</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>History</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-fire"></span>Account<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                                <li><a href="Logout.aspx"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Navbar end -->

        <div class="container">

            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-7">
                    <h3 class="text-center">Shopping Cart</h3>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="btnPorceedToCheckOut" runat="server" Text="Proced to checkout" CssClass="btn btn-lg" OnClick="btnPorceedToCheckOut_Click" />
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-7">
                    <asp:ListBox ID="listBoxBookList" runat="server"></asp:ListBox>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="btnRemoveItem" runat="server" Text="Remove item" CssClass="btn btn-group" OnClick="btnRemoveItem_Click" />
                    <hr />
                    <asp:Button ID="btnClearItems" runat="server" Text="Clear All" CssClass="btn btn-group" OnClick="btnClearItems_Click" />
                    <hr />
                    <asp:Button ID="btnAddAnotherItem" runat="server" Text="Add other item(s)" CssClass ="btn btn-group" OnClick="btnAddAnotherItem_Click"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-7">
                    <h2>Total:
                <asp:Label ID="lblTotalPrice" runat="server" Text="$"></asp:Label></h2>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <div>
                <div>
                </div>
                <div>
                </div>
                <div>
                </div>
            </div>
        </div>
    </form>
</body>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</html>
