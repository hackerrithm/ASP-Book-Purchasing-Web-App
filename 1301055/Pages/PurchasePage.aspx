<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchasePage.aspx.cs" Inherits="PurchasePage" %>

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
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Welcome <asp:Label ID="lblUserNameNav" runat="server"></asp:Label></a></li>
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
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <h3>
                            <asp:Label ID="lblSelectCategory" runat="server" Text="Select a category"></asp:Label></h3>
                        <asp:DropDownList ID="ddlBookCategory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBookCategory_SelectedIndexChanged">
                        </asp:DropDownList>
                        <hr />
                        <h3>
                            <asp:Label ID="lblSelectBook" runat="server" Text="Select a book"></asp:Label></h3>
                        <asp:DropDownList ID="ddlBookName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBookName_SelectedIndexChanged">
                        </asp:DropDownList>
                        <hr />
                        <h3>
                            <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label></h3>

                        <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="validatorQuantity" ControlToValidate="txtQuantity" CssClass="alert-warning panel-warning" runat="server" ErrorMessage="Please specify the quantity"></asp:RequiredFieldValidator>

                    </div>

                    <div class="col-md-7">
                        <asp:Panel ID="bookPanel" runat="server" CssClass="panel panel-warning" Width="500">
                            <div>
                            <div>
                                <h2>
                                    <asp:Label ID="lblBookTitle" runat="server" CssClass="card-title"></asp:Label></h2>

                            </div>

                            <div>
                                <h4>by
                                    <asp:Label ID="lblBookAuthor" runat="server"></asp:Label></h4>
                            </div>
                            <h6 class="card-subtitle text-muted">
                                <asp:Label ID="lblShortDescription" runat="server" CssClass=""></asp:Label>
                            </h6>

                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Image ID="imgBookImage" runat="server" CssClass="img-thumbnail" />

                                </div>
                                <div class="col-md-3">
                                    <div>
                                        <h3>Rating</h3>
                                    </div>
                                    <h5>
                                        <asp:Label ID="lblBookRating" runat="server"></asp:Label></h5>
                                    <hr />
                                    <span class="glyphicon glyphicon-star"></span>
                                    <div>
                                        <h2>
                                            <asp:Label ID="lblDiscountText" runat="server" Text="Discount: " ForeColor="Blue"></asp:Label>
                                            <asp:Label ID="lblDiscount" runat="server" Text="" CssClass="" ForeColor="Blue"></asp:Label></h2>
                                        <h4>
                                            <asp:Label ID="lblPrintLength" runat="server" Text=""></asp:Label></h4>
                                    </div>
                                </div>


                            </div>

                            <div>
                                <h2>
                                    <asp:Label ID="lblUnitPrice" runat="server" Text="$" CssClass=""></asp:Label></h2>
                            </div>
                            <div>
                                <h2>
                                    <asp:Label ID="lblPreorderPriceText" runat="server" Text="Preorder price: " ></asp:Label>
                                    <asp:Label ID="lblPreorder" runat="server" Text="$" CssClass="" ForeColor="Blue"></asp:Label></h2>
                            </div>
                            <div>
                                <asp:Label ID="lblLongDescription" runat="server" CssClass=""></asp:Label>
                            </div>
                            <div>
                                <asp:Button ID="btnViewMoreAboutBook" runat="server" Text="View more" CssClass="btn btn-success" />
                            </div>


                            </div>
                        </asp:Panel>
                        <br />
                        <br />
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <hr class="center-block" />
                                <span style="">Title:
                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    <br />
                                    Author:
                                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                                    <br />
                                    UnitPrice:
                                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                    <br />
                                    ImageFile:
                                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                                    <br />
                                    <p class="img-thumbnail">
                                        <asp:Image ID="imgBookImage" runat="server"
                                            ImageUrl='<%#"../images/books/computer_books/" + Eval("ImageFile") %>' Width="150" Height="200" />
                                    </p>
                                    <br />
                                    Rating:
                                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                                    <br />
                                    <br />
                                </span>

                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <span style="">Title:
                                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                                    <br />
                                    Author:
                                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                                    <br />
                                    UnitPrice:
                                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                                    <br />
                                    ImageFile:
                                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                                    <br />
                                    Rating:
                                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
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
                                    UnitPrice:
                                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                                    <br />
                                    ImageFile:
                                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                                    <br />
                                    Rating:
                                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    <br />
                                    <br />
                                </span>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <hr class="center-block" />
                                <span style="">Title:
                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    <br />
                                    Author:
                                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                                    <br />
                                    UnitPrice:
                                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                    <br />
                                    ImageFile:
                                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                                    <br />
                                    <p class="img-thumbnail">
                                        <asp:Image ID="imgBookImage" runat="server"
                                            ImageUrl='<%#"../images/books/computer_books/" + Eval("ImageFile") %>' Width="150" Height="200" />
                                    </p>
                                    <br />
                                    Rating:
                                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                                    <br />
                                    <br />
                                </span>

                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="align-content: center;">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="align-content: center;" class="col-lg-12">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-lg" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField NumericButtonCssClass="text-danger" />
                                            <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-lg" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <span style="">Title:
                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    <br />
                                    Author:
                                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                                    <br />
                                    UnitPrice:
                                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                    <br />
                                    ImageFile:
                                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                                    <br />
                                    Rating:
                                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                                    <br />
                                    <br />
                                </span>
                            </SelectedItemTemplate>
                        </asp:ListView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HexebookConnectionString %>" SelectCommand="SELECT [Title], [Author], [UnitPrice], [ImageFile], [Rating] FROM [Book] ORDER BY [Title]"></asp:SqlDataSource>

                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="btnAddBookItem" runat="server" CssClass="btn btn-sm btn-success" Text="Add to Cart" ToolTip="Add" OnClick="btnAddBookItem_Click" />
                        <hr />
                        <asp:Button ID="btnGoToCart" runat="server" CssClass="btn btn-sm btn-success" Text="Go to Cart" ToolTip="Go to cart" OnClick="btnGoToCart_Click" />
                        <hr />
                        <asp:Button ID="btnProceedToCheckout" runat="server" CssClass="btn btn-sm btn-primary" Text="Proceed To Checkout" ToolTip="Proceed to checkout" OnClick="btnProceedToCheckout_Click" />
                        <hr />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-7">
                        <br />
                        <br />
                        <asp:DetailsView ID="detailsViewBooks" runat="server">
                            <EmptyDataTemplate>
                                <h4 class="panel-info">Empty...nothing to display</h4>
                            </EmptyDataTemplate>
                        </asp:DetailsView>
                        <hr />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-7">
                        <br />
                        <br />
                        <asp:ListBox ID="listBoxBookList" runat="server"></asp:ListBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnRemoveItem" runat="server" Text="Remove item" CssClass="btn btn-group" OnClick="btnRemoveItem_Click" />
                        <hr />
                        <asp:Button ID="btnClearItems" runat="server" Text="Clear All" CssClass="btn btn-group" OnClick="btnClearItems_Click" />

                    </div>
                </div>
            </div>
        </div>

    </form>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</body>
</html>
