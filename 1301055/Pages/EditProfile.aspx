<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/custom-styles/Account-Page-StyleSheet.css" rel="stylesheet" />
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
              <a class="navbar-brand" href="ProfilePage.aspx"><h4>Reacthead</h4></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="Logout.aspx"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- Navbar end -->

        <div class="container">
            <div class="col-md-4">
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action list-group-item-success">Profile</a>
                    <a href="#" class="list-group-item list-group-item-action list-group-item-info">Account</a>
                </div>

            </div>
            <div class="col-md-8">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Profile Information
                    </div>
                    <div class="panel-body">
                       <div class="row">
                           <div class="col-md-3">
                               <asp:Label ID="lblEditUserName" runat="server" Text="Username:"></asp:Label>
                           </div>
                           <div class="col-md-5">
                               <asp:TextBox ID="txtEditUserName" runat="server" placeholder="Enter Username"></asp:TextBox>
                           </div>
                       </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</body>
</html>

