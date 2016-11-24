<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfilePage.aspx.cs" Inherits="ProfilePage"  MaintainScrollPositionOnPostback="true" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/custom-styles/Account-Page-StyleSheet.css" rel="stylesheet" />
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
                    <li><a><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                    <li><a><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                    <li><a><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                    <li><asp:TextBox ID="txtSearchBooks" runat="server" Width="400" Height="50" ForeColor="White" BackColor="Gray" Font-Size="Larger"></asp:TextBox></li>
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


        <ul class="nav nav-tabs nav-justified">
          <li class="active"><a data-toggle="tab" href="#home">Books</a></li>
          <li><a data-toggle="tab" href="#menu1">Preview</a></li>
          <li><a data-toggle="tab" href="#menu2">Profile</a></li>
        </ul>

        <div class="tab-content">
          <div id="home" class="tab-pane fade in active">
              <!-- TAB CONTENT -->
                    <div class="page-header center-block text-center">
                        <h2>Purchase Form</h2><small> - Please fill out the form below</small>
                    </div>
              <div class="row">
                  <div class="col-md-6">
                    <div class="table-responsive">
                      <table class="table table-responsive h4">
                          <tbody>
                              <!-- Table row -->
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-3">
                                            <asp:Label ID="lblFirstName" runat="server" Text="FirstName:" Font-Bold="true"></asp:Label>
                                          </div>
                                          <div class="col-md-4">
                                            <asp:TextBox ID="txtFirstName" runat="server" placeholder="enter firstname"></asp:TextBox>
                                          </div>
                                      </div>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your first name" ForeColor="Red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-3">
                                           <asp:Label ID="lblLastName" runat="server" Text="LastName:" Font-Bold="true"></asp:Label>
                                          </div>
                                          <div class="col-md-4">
                                            <asp:TextBox ID="txtLastName" runat="server" placeholder="enter lastname"></asp:TextBox>
                                          </div>
                                      </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your last name" ForeColor="Red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                                
                          
                                  </td>

                              </tr>
                              <!-- Table row -->
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-3">
                                            <asp:Label ID="lblBookCategory" runat="server" Text="Category:" Font-Bold="true"></asp:Label>
                                          </div>
                                          <div class="col-md-4">
                                            <asp:DropDownList ID="ddlBookCategory" runat="server" CssClass="list-group" AutoPostBack="true" OnSelectedIndexChanged="ddlBookCategory_SelectedIndexChanged">
                                          </asp:DropDownList>
                             
                                          </div>
                                      </div>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please select a category from the list" ControlToValidate="ddlBookCategory" ForeColor="Red"></asp:RequiredFieldValidator>
   
                                  </td>

                              </tr>
                              <!-- Table row -->
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-3">
                                            <asp:Label ID="lblBookName" runat="server" Text="Book:" Font-Bold="true"></asp:Label>
                                          </div>
                                          <div class="col-md-4">
                                            <asp:DropDownList ID="ddlBookName" runat="server" CssClass="list-group" AutoPostBack="true" OnSelectedIndexChanged="ddlBookName_SelectedIndexChanged">
                                          </asp:DropDownList>
                             
                                          </div>
                                      </div>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please select a book from the list" ControlToValidate="ddlBookName" ForeColor="Red"></asp:RequiredFieldValidator>
   
                                  </td>

                              </tr>
                               <!-- Table row -->
                              <tr>
                                  <td>
                                      <asp:AccessDataSource ID="AccessDataSource1" runat="server">

                                      </asp:AccessDataSource>
                                      <div class="row">
                                          <div class="col-md-7">
                                              <asp:Panel ID="bookPanel" runat="server">
                                                  <div class="panel panel-primary" id="book-panel">
                                                      <div class="panel-body">
                                                          <div class="card">
                                                              <div class="card-block">
                                                                  <div>
                                                                      <h2>
                                                                          <asp:Label ID="Label1" runat="server" Text="long description" CssClass="card-title"></asp:Label></h2>
                                                                  </div>
                                                                  <h6 class="card-subtitle text-muted">
                                                                      <asp:Label ID="lblShortDescription" runat="server" Text="short description" CssClass=""></asp:Label>
                                                                  </h6>
                                                              </div>
                                                              <asp:Image ID="imgBookImage" runat="server" Width="300" Height="300" />
                                                              <div class="card-block">
                                                                  <div>
                                                                      <h2>
                                                                          <asp:Label ID="lblUnitPrice" runat="server" Text="$" CssClass=""></asp:Label></h2>
                                                                  </div>
                                                                  <div>
                                                                      <asp:Label ID="lblLongDescription" runat="server" Text="long description" CssClass=""></asp:Label>
                                                                  </div>
                                                                  <div>
                                                                      <asp:Button ID="btnViewMoreAboutBook" runat="server" Text="View More" CssClass="btn btn-success" />
                                                                  </div>


                                                              </div>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </asp:Panel>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                               <!-- Table row -->
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-4">
                                              <asp:DetailsView ID="detailsViewBooks" runat="server">
                                                  <EmptyDataTemplate>
                                                      <h4 class="panel-info">Empty...nothing to display</h4>
                                                  </EmptyDataTemplate>
                                              </asp:DetailsView>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              <!-- Table row -->
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-3">
                                           <asp:Label ID="lblQuantity" runat="server" Text="Quantity" Font-Bold="true"></asp:Label>
                                          </div>
                                          <div class="col-md-4">                               
                                            <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number"></asp:TextBox>
                                
                    
                                          </div>
                                      </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the quantity" ForeColor="Red" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>

                          
                                  </td>
                              </tr>
                              <!-- Table row -->
                              <tr>
                                  <td>
                                       <asp:Button ID="btnAddBookItem" runat="server" CssClass="btn btn-sm btn-success" Text="Add to list" ToolTip="Add" OnClick="btnAddBookItem_Click" />
                       
                                  </td>
                              </tr>
                              <!-- Table row -->
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-3">
                                              <asp:Label ID="lblPayMethod" runat="server" Text="Payment Method" Font-Bold="true"></asp:Label>
                                          </div>
                                          <div class="col-md-4">
                                            <asp:RadioButtonList ID="rdbPaymentMethod" runat="server" OnSelectedIndexChanged="rdbPaymentMethod_SelectedIndexChanged" AutoPostBack="true">
                                                <asp:ListItem Value ="0" Text="Cash"></asp:ListItem>
                                                <asp:ListItem Value ="1" Text="CreditCard"></asp:ListItem>
                                                <asp:ListItem Value ="2" Text="DebitCard"></asp:ListItem>
                                             </asp:RadioButtonList>

                                              <asp:Label ID="lblCardData" runat="server" Text="Card Number:"></asp:Label>
                                              <asp:TextBox ID="txtCardNumber" runat="server" placeholder="please enter card number"></asp:TextBox>
                                 
                                          </div>
                                      </div>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select a payment method" ControlToValidate="rdbPaymentMethod" ForeColor="Red"></asp:RequiredFieldValidator>                       
                          
                                  </td>

                              </tr>
                              <!-- Table row -->
                              <tr>
                                  <td>
                                      <div class="row">
                                          <div class="col-md-3">
                                            <asp:Label ID="lblSignup" runat="server" Text="Sign up for newsletter" Font-Bold="true"></asp:Label>
                                          </div>
                                          <div class="col-md-4">
                                           <asp:CheckBox ID="chkbxSignUp" runat="server" AutoPostBack="true">
                                           </asp:CheckBox>
                                          </div>
                                      </div>
                        
                          
                                  </td>
                                  <td>

                                  </td>
                              </tr>
                 
                          </tbody>
                      </table>
                    </div>  
                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-8">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-sm btn-success" Text="Submit" ToolTip="submit" OnClick="btnSubmit_Click" />
                        </div>
                    </div> 
                </div>
                  <div class="col-md-6">
                      <div>
                          <img src="images/shopping-cart1.png" id="shoppingCartImage" />
                      </div>
                      
                      <div>
                          <h2>Total:</h2><h4> - </h4><h2><asp:Label ID="lblTotalPrice" runat="server" Text="$"></asp:Label></h2>
                      </div>
                      <div>
                          <i class="fa fa-bars"></i>
                          <asp:ListBox ID="listBoxBooks" runat="server" CssClass="" >
                          </asp:ListBox>
                      </div>


                  </div>
                  <div class="row">
                      <div class="col-md-3">
                          <asp:Button ID="btnRemoveItem" runat="server" Text="Remove item" CssClass="btn btn-group" OnClick="btnRemoveItem_Click" />
                      </div>
                      <div class="col-md-3">
                          <asp:Button ID="btnClearItems" runat="server" Text="Clear All" CssClass="btn btn-group" OnClick="btnClearItems_Click" />
                      </div>
                  </div>
              </div>

              <!-- TAB CONTENT END -->

          </div>
          <div id="menu1" class="tab-pane fade">
            <br />
              <div class="row">
                  <div class="col-md-6">
                      <div class="list-group">
                          <a href="#" class="list-group-item list-group-item-success">Dapibus ac facilisis in</a>
                          <a href="#" class="list-group-item list-group-item-info">Cras sit amet nibh libero</a>
                          <a href="#" class="list-group-item list-group-item-warning">Porta ac consectetur ac</a>
                          <a href="#" class="list-group-item list-group-item-danger">Vestibulum at eros</a>
                        </div>
                  </div>
                  <div class="col-md-3">
                      2
                  </div>
                  <div class="col-md-3">
                      3
                  </div>
              </div>
              </div>
          <div id="menu2" class="tab-pane fade">
<!-- TAB CONTENT -->
              <br />
              <div class="row">
                  <div class="col-md-6">
                      <div>
                          <img src="images/blank-profile.png" id="profileImageID" />
                      </div>

                      <div>
                          <h2><asp:Label ID="lblProfileName" runat="server" Text=""></asp:Label></h2>
                      </div>
                      <div>
                          <h4><asp:Label ID="lblPurchaseHistory" runat="server" Text="Purchase History"></asp:Label></h4>
                      </div>
                      <div>
                          <h4><asp:Label ID="lblLatestBooks" runat="server" Text="Latest Books"></asp:Label></h4>
                      </div>
                      <div>
                           <asp:Button ID="btnEditProfile" runat="server" CssClass="btn btn-sm btn-success" Text="Edit Profile" ToolTip="Edit Profile Information" OnClick="btnEditProfile_Click" />
                       
                      </div>

                  </div>
                  <div class="col-md-6">
                      <div class="table-responsive">
                          <table class="table table-responsive h4">
                              <tbody>
                                  <!-- Table row -->
                                  <tr>
                                      <td>
                                          <div class="row">
                                              <div class="col-md-4">
                                                  <asp:GridView ID="GridView1" runat="server" BackColor="Blue">
                                                      <Columns></Columns>
                                                  </asp:GridView>
                                              </div>
                                          </div>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <div class="row">
                                              <div class="col-md-3">
                                              </div>
                                              <div class="col-md-4">
                                              </div>
                                          </div>

                                      </td>

                                  </tr>


                              </tbody>
                          </table>
                      </div>
                      <div class="row">
                          <div class="col-md-5"></div>
                          <div class="col-md-6">
                              <asp:Button ID="Button2" runat="server" CssClass="btn btn-sm btn-success" Text="Submit" ToolTip="submit" OnClick="btnSubmit_Click" />
                          </div>
                      </div>
                  </div>

              </div>

              <!-- TAB CONTENT END -->

          </div>
        </div>



    </div>
        <br />
        <br />
    </form>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</body>
</html>
