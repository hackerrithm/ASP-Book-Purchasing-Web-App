<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InventoryManager.aspx.cs" Inherits="InventoryManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/custom-styles/Admin-Page-StyleSheet.css" rel="stylesheet" />
    <title>Inventory Manager</title>
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

    <div class="container center-block">

        <br />
            <h2 class="text-center">Books Inventory</h2>
        <hr />

        <h3>Update and Delete</h3>

        <table>
            <thead>

            </thead>
            <tbody>
                <tr class="row">
                    <td class="col-md-6">
                        <asp:DropDownList ID="ddlBooksList" runat="server"></asp:DropDownList>
                    </td>
                    <td class="col-md-6">
                        <asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    </td>
                </tr>
                <tr class="row">
                    <td class="col-md-6">
                        <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Update" OnClick="btnEdit_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
        <hr />
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label1" runat="server" Text="Author: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtBookAuthor" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label3" runat="server" Text="Unit Price: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label4" runat="server" Text="Short Description: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtShortDescription" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label5" runat="server" Text="Long  Description: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtLongDescription" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label6" runat="server" Text="Quantity: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label7" runat="server" Text="PreOrder Price: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtPreOrder" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label8" runat="server" Text="Discount: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtDiscount" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label9" runat="server" Text="Rating: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtRating" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label10" runat="server" Text="Publication Date: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtPublicationDate" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label11" runat="server" Text="Print Length: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtPrintLength" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label12" runat="server" Text="Image File: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtImageFile" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label13" runat="server" Text="ISBN: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label14" runat="server" Text="Book Status: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtBookStatus" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="Label15" runat="server" Text="Category ID: "></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtCategoryID" runat="server"></asp:TextBox>
            </div>
        </div>

        <hr />

        <asp:ListView ID="listviewInventory" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775; color:#284775; ">BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                <br />
                PublisherID:
                <asp:Label ID="PublisherIDLabel" runat="server" Text='<%# Eval("PublisherID") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                ShortDescription:
                <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Eval("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:Label ID="LongDescriptionLabel" runat="server" Text='<%# Eval("LongDescription") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                <br />
                PreOrderPrice:
                <asp:Label ID="PreOrderPriceLabel" runat="server" Text='<%# Eval("PreOrderPrice") %>' />
                <br />
                Discount:
                <asp:Label ID="DiscountLabel" runat="server" Text='<%# Eval("Discount") %>' />
                <br />
                Rating:
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                PublicationDate:
                <asp:Label ID="PublicationDateLabel" runat="server" Text='<%# Eval("PublicationDate") %>' />
                <br />
                PrintLength:
                <asp:Label ID="PrintLengthLabel" runat="server" Text='<%# Eval("PrintLength") %>' />
                <br />
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <br />
                ISBN:
                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />
                BookStatus:
                <asp:Label ID="BookStatusLabel" runat="server" Text='<%# Eval("BookStatus") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                <br />
                BookType:
                <asp:Label ID="BookTypeLabel" runat="server" Text='<%# Eval("BookType") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">BookID:
                <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                PublisherID:
                <asp:TextBox ID="PublisherIDTextBox" runat="server" Text='<%# Bind("PublisherID") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" Text='<%# Bind("LongDescription") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                PreOrderPrice:
                <asp:TextBox ID="PreOrderPriceTextBox" runat="server" Text='<%# Bind("PreOrderPrice") %>' />
                <br />
                Discount:
                <asp:TextBox ID="DiscountTextBox" runat="server" Text='<%# Bind("Discount") %>' />
                <br />
                Rating:
                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                <br />
                PublicationDate:
                <asp:TextBox ID="PublicationDateTextBox" runat="server" Text='<%# Bind("PublicationDate") %>' />
                <br />
                PrintLength:
                <asp:TextBox ID="PrintLengthTextBox" runat="server" Text='<%# Bind("PrintLength") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />
                ISBN:
                <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                <br />
                BookStatus:
                <asp:TextBox ID="BookStatusTextBox" runat="server" Text='<%# Bind("BookStatus") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                <br />
                BookType:
                <asp:TextBox ID="BookTypeTextBox" runat="server" Text='<%# Bind("BookType") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                PublisherID:
                <asp:TextBox ID="PublisherIDTextBox" runat="server" Text='<%# Bind("PublisherID") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" Text='<%# Bind("LongDescription") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                PreOrderPrice:
                <asp:TextBox ID="PreOrderPriceTextBox" runat="server" Text='<%# Bind("PreOrderPrice") %>' />
                <br />
                Discount:
                <asp:TextBox ID="DiscountTextBox" runat="server" Text='<%# Bind("Discount") %>' />
                <br />
                Rating:
                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                <br />
                PublicationDate:
                <asp:TextBox ID="PublicationDateTextBox" runat="server" Text='<%# Bind("PublicationDate") %>' />
                <br />
                PrintLength:
                <asp:TextBox ID="PrintLengthTextBox" runat="server" Text='<%# Bind("PrintLength") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />
                ISBN:
                <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                <br />
                BookStatus:
                <asp:TextBox ID="BookStatusTextBox" runat="server" Text='<%# Bind("BookStatus") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                <br />
                BookType:
                <asp:TextBox ID="BookTypeTextBox" runat="server" Text='<%# Bind("BookType") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;color:#333333; ">BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                <br />
                PublisherID:
                <asp:Label ID="PublisherIDLabel" runat="server" Text='<%# Eval("PublisherID") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                ShortDescription:
                <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Eval("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:Label ID="LongDescriptionLabel" runat="server" Text='<%# Eval("LongDescription") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                <br />
                PreOrderPrice:
                <asp:Label ID="PreOrderPriceLabel" runat="server" Text='<%# Eval("PreOrderPrice") %>' />
                <br />
                Discount:
                <asp:Label ID="DiscountLabel" runat="server" Text='<%# Eval("Discount") %>' />
                <br />
                Rating:
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                PublicationDate:
                <asp:Label ID="PublicationDateLabel" runat="server" Text='<%# Eval("PublicationDate") %>' />
                <br />
                PrintLength:
                <asp:Label ID="PrintLengthLabel" runat="server" Text='<%# Eval("PrintLength") %>' />
                <br />
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <br />
                ISBN:
                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />
                BookStatus:
                <asp:Label ID="BookStatusLabel" runat="server" Text='<%# Eval("BookStatus") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                <br />
                BookType:
                <asp:Label ID="BookTypeLabel" runat="server" Text='<%# Eval("BookType") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6; font-weight: bold;color: #333333; ">BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                <br />
                PublisherID:
                <asp:Label ID="PublisherIDLabel" runat="server" Text='<%# Eval("PublisherID") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                ShortDescription:
                <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Eval("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:Label ID="LongDescriptionLabel" runat="server" Text='<%# Eval("LongDescription") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                <br />
                PreOrderPrice:
                <asp:Label ID="PreOrderPriceLabel" runat="server" Text='<%# Eval("PreOrderPrice") %>' />
                <br />
                Discount:
                <asp:Label ID="DiscountLabel" runat="server" Text='<%# Eval("Discount") %>' />
                <br />
                Rating:
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                PublicationDate:
                <asp:Label ID="PublicationDateLabel" runat="server" Text='<%# Eval("PublicationDate") %>' />
                <br />
                PrintLength:
                <asp:Label ID="PrintLengthLabel" runat="server" Text='<%# Eval("PrintLength") %>' />
                <br />
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <br />
                ISBN:
                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />
                BookStatus:
                <asp:Label ID="BookStatusLabel" runat="server" Text='<%# Eval("BookStatus") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                <br />
                BookType:
                <asp:Label ID="BookTypeLabel" runat="server" Text='<%# Eval("BookType") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>

        </asp:ListView>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HexebookConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @original_BookID AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([ShortDescription] = @original_ShortDescription) OR ([ShortDescription] IS NULL AND @original_ShortDescription IS NULL)) AND (([LongDescription] = @original_LongDescription) OR ([LongDescription] IS NULL AND @original_LongDescription IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([PreOrderPrice] = @original_PreOrderPrice) OR ([PreOrderPrice] IS NULL AND @original_PreOrderPrice IS NULL)) AND (([Discount] = @original_Discount) OR ([Discount] IS NULL AND @original_Discount IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([PublicationDate] = @original_PublicationDate) OR ([PublicationDate] IS NULL AND @original_PublicationDate IS NULL)) AND (([PrintLength] = @original_PrintLength) OR ([PrintLength] IS NULL AND @original_PrintLength IS NULL)) AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL)) AND (([ISBN] = @original_ISBN) OR ([ISBN] IS NULL AND @original_ISBN IS NULL)) AND (([BookStatus] = @original_BookStatus) OR ([BookStatus] IS NULL AND @original_BookStatus IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([BookType] = @original_BookType) OR ([BookType] IS NULL AND @original_BookType IS NULL))" InsertCommand="INSERT INTO [Book] ([Title], [Author], [PublisherID], [UnitPrice], [ShortDescription], [LongDescription], [Quantity], [PreOrderPrice], [Discount], [Rating], [PublicationDate], [PrintLength], [ImageFile], [ISBN], [BookStatus], [CategoryID], [BookType]) VALUES (@Title, @Author, @PublisherID, @UnitPrice, @ShortDescription, @LongDescription, @Quantity, @PreOrderPrice, @Discount, @Rating, @PublicationDate, @PrintLength, @ImageFile, @ISBN, @BookStatus, @CategoryID, @BookType)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Book] ORDER BY [CategoryID]" UpdateCommand="UPDATE [Book] SET [Title] = @Title, [Author] = @Author, [PublisherID] = @PublisherID, [UnitPrice] = @UnitPrice, [ShortDescription] = @ShortDescription, [LongDescription] = @LongDescription, [Quantity] = @Quantity, [PreOrderPrice] = @PreOrderPrice, [Discount] = @Discount, [Rating] = @Rating, [PublicationDate] = @PublicationDate, [PrintLength] = @PrintLength, [ImageFile] = @ImageFile, [ISBN] = @ISBN, [BookStatus] = @BookStatus, [CategoryID] = @CategoryID, [BookType] = @BookType WHERE [BookID] = @original_BookID AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([PublisherID] = @original_PublisherID) OR ([PublisherID] IS NULL AND @original_PublisherID IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([ShortDescription] = @original_ShortDescription) OR ([ShortDescription] IS NULL AND @original_ShortDescription IS NULL)) AND (([LongDescription] = @original_LongDescription) OR ([LongDescription] IS NULL AND @original_LongDescription IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([PreOrderPrice] = @original_PreOrderPrice) OR ([PreOrderPrice] IS NULL AND @original_PreOrderPrice IS NULL)) AND (([Discount] = @original_Discount) OR ([Discount] IS NULL AND @original_Discount IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([PublicationDate] = @original_PublicationDate) OR ([PublicationDate] IS NULL AND @original_PublicationDate IS NULL)) AND (([PrintLength] = @original_PrintLength) OR ([PrintLength] IS NULL AND @original_PrintLength IS NULL)) AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL)) AND (([ISBN] = @original_ISBN) OR ([ISBN] IS NULL AND @original_ISBN IS NULL)) AND (([BookStatus] = @original_BookStatus) OR ([BookStatus] IS NULL AND @original_BookStatus IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([BookType] = @original_BookType) OR ([BookType] IS NULL AND @original_BookType IS NULL))" ConflictDetection="OverwriteChanges">
            <DeleteParameters>
                <asp:Parameter Name="original_BookID" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_PublisherID" Type="Int32" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_ShortDescription" Type="String" />
                <asp:Parameter Name="original_LongDescription" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_PreOrderPrice" Type="Decimal" />
                <asp:Parameter Name="original_Discount" Type="Int32" />
                <asp:Parameter Name="original_Rating" Type="String" />
                <asp:Parameter DbType="Date" Name="original_PublicationDate" />
                <asp:Parameter Name="original_PrintLength" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_ISBN" Type="String" />
                <asp:Parameter Name="original_BookStatus" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_BookType" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="PublisherID" Type="Int32" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="PreOrderPrice" Type="Decimal" />
                <asp:Parameter Name="Discount" Type="Int32" />
                <asp:Parameter Name="Rating" Type="String" />
                <asp:Parameter DbType="Date" Name="PublicationDate" />
                <asp:Parameter Name="PrintLength" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="BookStatus" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="BookType" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="PublisherID" Type="Int32" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="PreOrderPrice" Type="Decimal" />
                <asp:Parameter Name="Discount" Type="Int32" />
                <asp:Parameter Name="Rating" Type="String" />
                <asp:Parameter Name="PublicationDate" DbType="Date" />
                <asp:Parameter Name="PrintLength" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="BookStatus" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="BookType" Type="String" />
                <asp:Parameter Name="original_BookID" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_PublisherID" Type="Int32" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_ShortDescription" Type="String" />
                <asp:Parameter Name="original_LongDescription" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_PreOrderPrice" Type="Decimal" />
                <asp:Parameter Name="original_Discount" Type="Int32" />
                <asp:Parameter Name="original_Rating" Type="String" />
                <asp:Parameter DbType="Date" Name="original_PublicationDate" />
                <asp:Parameter Name="original_PrintLength" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_ISBN" Type="String" />
                <asp:Parameter Name="original_BookStatus" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_BookType" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</body>

</html>
