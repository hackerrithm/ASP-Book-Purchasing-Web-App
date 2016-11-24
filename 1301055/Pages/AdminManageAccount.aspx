<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminManageAccount.aspx.cs" Inherits="AdminManageAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/custom-styles/Admin-Page-StyleSheet.css" rel="stylesheet" />
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
                        <li><a><span class="glyphicon glyphicon-bitcoin"></span>Admin</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="InventoryManager.aspx"><span class="glyphicon glyphicon-shopping-cart"></span>Book Inventory</a></li>
                        <li><a href="AdminManageAccount.aspx"><span class="glyphicon glyphicon-shopping-cart"></span>Customer</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Orders</a></li>
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
                <div class="col-md-12">
                    <h3>Accounts Edit</h3>
                </div>
            </div>
            <hr />
            <h2 class="text-center">Form View</h2>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    UserID:
                <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
                    UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    MiddleName:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' />
                    <br />
                    PasswordHash:
                <asp:TextBox ID="PasswordHashTextBox" runat="server" Text='<%# Bind("PasswordHash") %>' />
                    <br />
                    DateJoined:
                <asp:TextBox ID="DateJoinedTextBox" runat="server" Text='<%# Bind("DateJoined") %>' />
                    <br />
                    EmailAddress:
                <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%# Bind("EmailAddress") %>' />
                    <br />
                    Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    ContactNumber:
                <asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' />
                    <br />
                    CreditCard:
                <asp:TextBox ID="CreditCardTextBox" runat="server" Text='<%# Bind("CreditCard") %>' />
                    <br />
                    DebitCard:
                <asp:TextBox ID="DebitCardTextBox" runat="server" Text='<%# Bind("DebitCard") %>' />
                    <br />
                    BillingAddress:
                <asp:TextBox ID="BillingAddressTextBox" runat="server" Text='<%# Bind("BillingAddress") %>' />
                    <br />
                    BillingCity:
                <asp:TextBox ID="BillingCityTextBox" runat="server" Text='<%# Bind("BillingCity") %>' />
                    <br />
                    BillingRegion:
                    <asp:TextBox ID="BillingRegionTextBox" runat="server" Text='<%# Bind("BillingRegion") %>' />
                    <br />
                    BillingPostalCode:
                    <asp:TextBox ID="BillingPostalCodeTextBox" runat="server" Text='<%# Bind("BillingPostalCode") %>' />
                    <br />
                    BillingCountry:
                    <asp:TextBox ID="BillingCountryTextBox" runat="server" Text='<%# Bind("BillingCountry") %>' />
                    <br />
                    ShippingAddress:
                    <asp:TextBox ID="ShippingAddressTextBox" runat="server" Text='<%# Bind("ShippingAddress") %>' />
                    <br />
                    ShippingCity:
                    <asp:TextBox ID="ShippingCityTextBox" runat="server" Text='<%# Bind("ShippingCity") %>' />
                    <br />
                    ShippingRegion:
                    <asp:TextBox ID="ShippingRegionTextBox" runat="server" Text='<%# Bind("ShippingRegion") %>' />
                    <br />
                    ShippingPostalCode:
                    <asp:TextBox ID="ShippingPostalCodeTextBox" runat="server" Text='<%# Bind("ShippingPostalCode") %>' />
                    <br />
                    ShippingCountry:
                    <asp:TextBox ID="ShippingCountryTextBox" runat="server" Text='<%# Bind("ShippingCountry") %>' />
                    <br />
                    AccessLevel:
                    <asp:TextBox ID="AccessLevelTextBox" runat="server" Text='<%# Bind("AccessLevel") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    MiddleName:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' />
                    <br />
                    PasswordHash:
                <asp:TextBox ID="PasswordHashTextBox" runat="server" Text='<%# Bind("PasswordHash") %>' />
                    <br />
                    DateJoined:
                <asp:TextBox ID="DateJoinedTextBox" runat="server" Text='<%# Bind("DateJoined") %>' />
                    <br />
                    EmailAddress:
                <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%# Bind("EmailAddress") %>' />
                    <br />
                    Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    ContactNumber:
                <asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' />
                    <br />
                    CreditCard:
                <asp:TextBox ID="CreditCardTextBox" runat="server" Text='<%# Bind("CreditCard") %>' />
                    <br />
                    DebitCard:
                <asp:TextBox ID="DebitCardTextBox" runat="server" Text='<%# Bind("DebitCard") %>' />
                    <br />
                    BillingAddress:
                <asp:TextBox ID="BillingAddressTextBox" runat="server" Text='<%# Bind("BillingAddress") %>' />
                    <br />
                    BillingCity:
                <asp:TextBox ID="BillingCityTextBox" runat="server" Text='<%# Bind("BillingCity") %>' />
                    <br />
                    BillingRegion:
                    <asp:TextBox ID="BillingRegionTextBox" runat="server" Text='<%# Bind("BillingRegion") %>' />
                    <br />
                    BillingPostalCode:
                    <asp:TextBox ID="BillingPostalCodeTextBox" runat="server" Text='<%# Bind("BillingPostalCode") %>' />
                    <br />
                    BillingCountry:
                    <asp:TextBox ID="BillingCountryTextBox" runat="server" Text='<%# Bind("BillingCountry") %>' />
                    <br />
                    ShippingAddress:
                    <asp:TextBox ID="ShippingAddressTextBox" runat="server" Text='<%# Bind("ShippingAddress") %>' />
                    <br />
                    ShippingCity:
                    <asp:TextBox ID="ShippingCityTextBox" runat="server" Text='<%# Bind("ShippingCity") %>' />
                    <br />
                    ShippingRegion:
                    <asp:TextBox ID="ShippingRegionTextBox" runat="server" Text='<%# Bind("ShippingRegion") %>' />
                    <br />
                    ShippingPostalCode:
                    <asp:TextBox ID="ShippingPostalCodeTextBox" runat="server" Text='<%# Bind("ShippingPostalCode") %>' />
                    <br />
                    ShippingCountry:
                    <asp:TextBox ID="ShippingCountryTextBox" runat="server" Text='<%# Bind("ShippingCountry") %>' />
                    <br />
                    AccessLevel:
                    <asp:TextBox ID="AccessLevelTextBox" runat="server" Text='<%# Bind("AccessLevel") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
                    UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    MiddleName:
                <asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Bind("MiddleName") %>' />
                    <br />
                    PasswordHash:
                <asp:Label ID="PasswordHashLabel" runat="server" Text='<%# Bind("PasswordHash") %>' />
                    <br />
                    DateJoined:
                <asp:Label ID="DateJoinedLabel" runat="server" Text='<%# Bind("DateJoined") %>' />
                    <br />
                    EmailAddress:
                <asp:Label ID="EmailAddressLabel" runat="server" Text='<%# Bind("EmailAddress") %>' />
                    <br />
                    Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    PostalCode:
                <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />

                    Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    ContactNumber:
                <asp:Label ID="ContactNumberLabel" runat="server" Text='<%# Bind("ContactNumber") %>' />
                    <br />
                    CreditCard:
                <asp:Label ID="CreditCardLabel" runat="server" Text='<%# Bind("CreditCard") %>' />
                    <br />
                    DebitCard:
                <asp:Label ID="DebitCardLabel" runat="server" Text='<%# Bind("DebitCard") %>' />
                    <br />
                    BillingAddress:
                <asp:Label ID="BillingAddressLabel" runat="server" Text='<%# Bind("BillingAddress") %>' />
                    <br />
                    BillingCity:
                <asp:Label ID="BillingCityLabel" runat="server" Text='<%# Bind("BillingCity") %>' />
                    <br />
                    BillingRegion:
                    <asp:Label ID="BillingRegionLabel" runat="server" Text='<%# Bind("BillingRegion") %>' />
                    <br />
                    BillingPostalCode:
                    <asp:Label ID="BillingPostalCodeLabel" runat="server" Text='<%# Bind("BillingPostalCode") %>' />
                    <br />
                    BillingCountry:
                    <asp:Label ID="BillingCountryLabel" runat="server" Text='<%# Bind("BillingCountry") %>' />
                    <br />
                    ShippingAddress:
                    <asp:Label ID="ShippingAddressLabel" runat="server" Text='<%# Bind("ShippingAddress") %>' />
                    <br />
                    ShippingCity:
                    <asp:Label ID="ShippingCityLabel" runat="server" Text='<%# Bind("ShippingCity") %>' />
                    <br />
                    ShippingRegion:
                    <asp:Label ID="ShippingRegionLabel" runat="server" Text='<%# Bind("ShippingRegion") %>' />
                    <br />
                    ShippingPostalCode:
                    <asp:Label ID="ShippingPostalCodeLabel" runat="server" Text='<%# Bind("ShippingPostalCode") %>' />
                    <br />
                    ShippingCountry:
                    <asp:Label ID="ShippingCountryLabel" runat="server" Text='<%# Bind("ShippingCountry") %>' />
                    <br />
                    AccessLevel:
                    <asp:Label ID="AccessLevelLabel" runat="server" Text='<%# Bind("AccessLevel") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>




            <br />
            <hr />
            <h2 class="text-center">Details View</h2>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                    <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
                    <asp:BoundField DataField="DateJoined" HeaderText="DateJoined" SortExpression="DateJoined" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                    <asp:BoundField DataField="CreditCard" HeaderText="CreditCard" SortExpression="CreditCard" />
                    <asp:BoundField DataField="DebitCard" HeaderText="DebitCard" SortExpression="DebitCard" />
                    <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
                    <asp:BoundField DataField="BillingCity" HeaderText="BillingCity" SortExpression="BillingCity" />
                    <asp:BoundField DataField="BillingRegion" HeaderText="BillingRegion" SortExpression="BillingRegion" />
                    <asp:BoundField DataField="BillingPostalCode" HeaderText="BillingPostalCode" SortExpression="BillingPostalCode" />
                    <asp:BoundField DataField="BillingCountry" HeaderText="BillingCountry" SortExpression="BillingCountry" />
                    <asp:BoundField DataField="ShippingAddress" HeaderText="ShippingAddress" SortExpression="ShippingAddress" />
                    <asp:BoundField DataField="ShippingCity" HeaderText="ShippingCity" SortExpression="ShippingCity" />
                    <asp:BoundField DataField="ShippingRegion" HeaderText="ShippingRegion" SortExpression="ShippingRegion" />
                    <asp:BoundField DataField="ShippingPostalCode" HeaderText="ShippingPostalCode" SortExpression="ShippingPostalCode" />
                    <asp:BoundField DataField="ShippingCountry" HeaderText="ShippingCountry" SortExpression="ShippingCountry" />
                    <asp:BoundField DataField="AccessLevel" HeaderText="AccessLevel" SortExpression="AccessLevel" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <hr />
            <h2 class="text-center">Grid View</h2>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                    <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
                    <asp:BoundField DataField="DateJoined" HeaderText="DateJoined" SortExpression="DateJoined" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                    <asp:BoundField DataField="CreditCard" HeaderText="CreditCard" SortExpression="CreditCard" />
                    <asp:BoundField DataField="DebitCard" HeaderText="DebitCard" SortExpression="DebitCard" />
                    <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" SortExpression="BillingAddress" />
                    <asp:BoundField DataField="BillingCity" HeaderText="BillingCity" SortExpression="BillingCity" />
                    <asp:BoundField DataField="BillingRegion" HeaderText="BillingRegion" SortExpression="BillingRegion" />
                    <asp:BoundField DataField="BillingPostalCode" HeaderText="BillingPostalCode" SortExpression="BillingPostalCode" />
                    <asp:BoundField DataField="BillingCountry" HeaderText="BillingCountry" SortExpression="BillingCountry" />
                    <asp:BoundField DataField="ShippingAddress" HeaderText="ShippingAddress" SortExpression="ShippingAddress" />
                    <asp:BoundField DataField="ShippingCity" HeaderText="ShippingCity" SortExpression="ShippingCity" />
                    <asp:BoundField DataField="ShippingRegion" HeaderText="ShippingRegion" SortExpression="ShippingRegion" />
                    <asp:BoundField DataField="ShippingPostalCode" HeaderText="ShippingPostalCode" SortExpression="ShippingPostalCode" />
                    <asp:BoundField DataField="ShippingCountry" HeaderText="ShippingCountry" SortExpression="ShippingCountry" />
                    <asp:BoundField DataField="AccessLevel" HeaderText="AccessLevel" SortExpression="AccessLevel" />
                </Columns>
            </asp:GridView>
            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HexebookConnectionString %>" DeleteCommand="DELETE FROM [UserAccount] WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND (([PasswordHash] = @original_PasswordHash) OR ([PasswordHash] IS NULL AND @original_PasswordHash IS NULL)) AND (([DateJoined] = @original_DateJoined) OR ([DateJoined] IS NULL AND @original_DateJoined IS NULL)) AND (([EmailAddress] = @original_EmailAddress) OR ([EmailAddress] IS NULL AND @original_EmailAddress IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([PostalCode] = @original_PostalCode) OR ([PostalCode] IS NULL AND @original_PostalCode IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([ContactNumber] = @original_ContactNumber) OR ([ContactNumber] IS NULL AND @original_ContactNumber IS NULL)) AND (([CreditCard] = @original_CreditCard) OR ([CreditCard] IS NULL AND @original_CreditCard IS NULL)) AND (([DebitCard] = @original_DebitCard) OR ([DebitCard] IS NULL AND @original_DebitCard IS NULL)) AND (([BillingAddress] = @original_BillingAddress) OR ([BillingAddress] IS NULL AND @original_BillingAddress IS NULL)) AND (([BillingCity] = @original_BillingCity) OR ([BillingCity] IS NULL AND @original_BillingCity IS NULL)) AND (([BillingRegion] = @original_BillingRegion) OR ([BillingRegion] IS NULL AND @original_BillingRegion IS NULL)) AND (([BillingPostalCode] = @original_BillingPostalCode) OR ([BillingPostalCode] IS NULL AND @original_BillingPostalCode IS NULL)) AND (([BillingCountry] = @original_BillingCountry) OR ([BillingCountry] IS NULL AND @original_BillingCountry IS NULL)) AND (([ShippingAddress] = @original_ShippingAddress) OR ([ShippingAddress] IS NULL AND @original_ShippingAddress IS NULL)) AND (([ShippingCity] = @original_ShippingCity) OR ([ShippingCity] IS NULL AND @original_ShippingCity IS NULL)) AND (([ShippingRegion] = @original_ShippingRegion) OR ([ShippingRegion] IS NULL AND @original_ShippingRegion IS NULL)) AND (([ShippingPostalCode] = @original_ShippingPostalCode) OR ([ShippingPostalCode] IS NULL AND @original_ShippingPostalCode IS NULL)) AND (([ShippingCountry] = @original_ShippingCountry) OR ([ShippingCountry] IS NULL AND @original_ShippingCountry IS NULL)) AND (([AccessLevel] = @original_AccessLevel) OR ([AccessLevel] IS NULL AND @original_AccessLevel IS NULL))" InsertCommand="INSERT INTO [UserAccount] ([UserName], [FirstName], [LastName], [MiddleName], [PasswordHash], [DateJoined], [EmailAddress], [Address], [City], [State], [PostalCode], [Country], [ContactNumber], [CreditCard], [DebitCard], [BillingAddress], [BillingCity], [BillingRegion], [BillingPostalCode], [BillingCountry], [ShippingAddress], [ShippingCity], [ShippingRegion], [ShippingPostalCode], [ShippingCountry], [AccessLevel]) VALUES (@UserName, @FirstName, @LastName, @MiddleName, @PasswordHash, @DateJoined, @EmailAddress, @Address, @City, @State, @PostalCode, @Country, @ContactNumber, @CreditCard, @DebitCard, @BillingAddress, @BillingCity, @BillingRegion, @BillingPostalCode, @BillingCountry, @ShippingAddress, @ShippingCity, @ShippingRegion, @ShippingPostalCode, @ShippingCountry, @AccessLevel)" SelectCommand="SELECT * FROM [UserAccount]" UpdateCommand="UPDATE [UserAccount] SET [UserName] = @UserName, [FirstName] = @FirstName, [LastName] = @LastName, [MiddleName] = @MiddleName, [PasswordHash] = @PasswordHash, [DateJoined] = @DateJoined, [EmailAddress] = @EmailAddress, [Address] = @Address, [City] = @City, [State] = @State, [PostalCode] = @PostalCode, [Country] = @Country, [ContactNumber] = @ContactNumber, [CreditCard] = @CreditCard, [DebitCard] = @DebitCard, [BillingAddress] = @BillingAddress, [BillingCity] = @BillingCity, [BillingRegion] = @BillingRegion, [BillingPostalCode] = @BillingPostalCode, [BillingCountry] = @BillingCountry, [ShippingAddress] = @ShippingAddress, [ShippingCity] = @ShippingCity, [ShippingRegion] = @ShippingRegion, [ShippingPostalCode] = @ShippingPostalCode, [ShippingCountry] = @ShippingCountry, [AccessLevel] = @AccessLevel WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND (([PasswordHash] = @original_PasswordHash) OR ([PasswordHash] IS NULL AND @original_PasswordHash IS NULL)) AND (([DateJoined] = @original_DateJoined) OR ([DateJoined] IS NULL AND @original_DateJoined IS NULL)) AND (([EmailAddress] = @original_EmailAddress) OR ([EmailAddress] IS NULL AND @original_EmailAddress IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([PostalCode] = @original_PostalCode) OR ([PostalCode] IS NULL AND @original_PostalCode IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([ContactNumber] = @original_ContactNumber) OR ([ContactNumber] IS NULL AND @original_ContactNumber IS NULL)) AND (([CreditCard] = @original_CreditCard) OR ([CreditCard] IS NULL AND @original_CreditCard IS NULL)) AND (([DebitCard] = @original_DebitCard) OR ([DebitCard] IS NULL AND @original_DebitCard IS NULL)) AND (([BillingAddress] = @original_BillingAddress) OR ([BillingAddress] IS NULL AND @original_BillingAddress IS NULL)) AND (([BillingCity] = @original_BillingCity) OR ([BillingCity] IS NULL AND @original_BillingCity IS NULL)) AND (([BillingRegion] = @original_BillingRegion) OR ([BillingRegion] IS NULL AND @original_BillingRegion IS NULL)) AND (([BillingPostalCode] = @original_BillingPostalCode) OR ([BillingPostalCode] IS NULL AND @original_BillingPostalCode IS NULL)) AND (([BillingCountry] = @original_BillingCountry) OR ([BillingCountry] IS NULL AND @original_BillingCountry IS NULL)) AND (([ShippingAddress] = @original_ShippingAddress) OR ([ShippingAddress] IS NULL AND @original_ShippingAddress IS NULL)) AND (([ShippingCity] = @original_ShippingCity) OR ([ShippingCity] IS NULL AND @original_ShippingCity IS NULL)) AND (([ShippingRegion] = @original_ShippingRegion) OR ([ShippingRegion] IS NULL AND @original_ShippingRegion IS NULL)) AND (([ShippingPostalCode] = @original_ShippingPostalCode) OR ([ShippingPostalCode] IS NULL AND @original_ShippingPostalCode IS NULL)) AND (([ShippingCountry] = @original_ShippingCountry) OR ([ShippingCountry] IS NULL AND @original_ShippingCountry IS NULL)) AND (([AccessLevel] = @original_AccessLevel) OR ([AccessLevel] IS NULL AND @original_AccessLevel IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_UserName" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_MiddleName" Type="String" />
                    <asp:Parameter Name="original_PasswordHash" Type="String" />
                    <asp:Parameter Name="original_DateJoined" DbType="Date" />
                    <asp:Parameter Name="original_EmailAddress" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_PostalCode" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_ContactNumber" Type="String" />
                    <asp:Parameter Name="original_CreditCard" Type="String" />
                    <asp:Parameter Name="original_DebitCard" Type="String" />
                    <asp:Parameter Name="original_BillingAddress" Type="String" />
                    <asp:Parameter Name="original_BillingCity" Type="String" />
                    <asp:Parameter Name="original_BillingRegion" Type="String" />
                    <asp:Parameter Name="original_BillingPostalCode" Type="String" />
                    <asp:Parameter Name="original_BillingCountry" Type="String" />
                    <asp:Parameter Name="original_ShippingAddress" Type="String" />
                    <asp:Parameter Name="original_ShippingCity" Type="String" />
                    <asp:Parameter Name="original_ShippingRegion" Type="String" />
                    <asp:Parameter Name="original_ShippingPostalCode" Type="String" />
                    <asp:Parameter Name="original_ShippingCountry" Type="String" />
                    <asp:Parameter Name="original_AccessLevel" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="MiddleName" Type="String" />
                    <asp:Parameter Name="PasswordHash" Type="String" />
                    <asp:Parameter Name="DateJoined" DbType="Date" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="ContactNumber" Type="String" />
                    <asp:Parameter Name="CreditCard" Type="String" />
                    <asp:Parameter Name="DebitCard" Type="String" />
                    <asp:Parameter Name="BillingAddress" Type="String" />
                    <asp:Parameter Name="BillingCity" Type="String" />
                    <asp:Parameter Name="BillingRegion" Type="String" />
                    <asp:Parameter Name="BillingPostalCode" Type="String" />
                    <asp:Parameter Name="BillingCountry" Type="String" />
                    <asp:Parameter Name="ShippingAddress" Type="String" />
                    <asp:Parameter Name="ShippingCity" Type="String" />
                    <asp:Parameter Name="ShippingRegion" Type="String" />
                    <asp:Parameter Name="ShippingPostalCode" Type="String" />
                    <asp:Parameter Name="ShippingCountry" Type="String" />
                    <asp:Parameter Name="AccessLevel" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="MiddleName" Type="String" />
                    <asp:Parameter Name="PasswordHash" Type="String" />
                    <asp:Parameter Name="DateJoined" DbType="Date" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="ContactNumber" Type="String" />
                    <asp:Parameter Name="CreditCard" Type="String" />
                    <asp:Parameter Name="DebitCard" Type="String" />
                    <asp:Parameter Name="BillingAddress" Type="String" />
                    <asp:Parameter Name="BillingCity" Type="String" />
                    <asp:Parameter Name="BillingRegion" Type="String" />
                    <asp:Parameter Name="BillingPostalCode" Type="String" />
                    <asp:Parameter Name="BillingCountry" Type="String" />
                    <asp:Parameter Name="ShippingAddress" Type="String" />
                    <asp:Parameter Name="ShippingCity" Type="String" />
                    <asp:Parameter Name="ShippingRegion" Type="String" />
                    <asp:Parameter Name="ShippingPostalCode" Type="String" />
                    <asp:Parameter Name="ShippingCountry" Type="String" />
                    <asp:Parameter Name="AccessLevel" Type="String" />
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_UserName" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_MiddleName" Type="String" />
                    <asp:Parameter Name="original_PasswordHash" Type="String" />
                    <asp:Parameter Name="original_DateJoined" DbType="Date" />
                    <asp:Parameter Name="original_EmailAddress" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_PostalCode" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_ContactNumber" Type="String" />
                    <asp:Parameter Name="original_CreditCard" Type="String" />
                    <asp:Parameter Name="original_DebitCard" Type="String" />
                    <asp:Parameter Name="original_BillingAddress" Type="String" />
                    <asp:Parameter Name="original_BillingCity" Type="String" />
                    <asp:Parameter Name="original_BillingRegion" Type="String" />
                    <asp:Parameter Name="original_BillingPostalCode" Type="String" />
                    <asp:Parameter Name="original_BillingCountry" Type="String" />
                    <asp:Parameter Name="original_ShippingAddress" Type="String" />
                    <asp:Parameter Name="original_ShippingCity" Type="String" />
                    <asp:Parameter Name="original_ShippingRegion" Type="String" />
                    <asp:Parameter Name="original_ShippingPostalCode" Type="String" />
                    <asp:Parameter Name="original_ShippingCountry" Type="String" />
                    <asp:Parameter Name="original_AccessLevel" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    </body>
</html>
