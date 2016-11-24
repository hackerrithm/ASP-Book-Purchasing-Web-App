<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <!--Import materialize.css-->
      <link href="../Content/materialize/css/materialize.min.css" rel="stylesheet" />
      <link href="../Content/custom-styles/Login-StyleSheet.css" rel="stylesheet" />
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <div id="login-page" class="row">
            <div class="col s6 z-depth-6 card-panel center-align">
                <div class="row">
                    <div class="input-field col s12 center">
                        <img src="../images/company-logo1.png" alt="" id="logo" class="responsive-img valign profile-image-login" />
                        <h4 class="center login-form-text">Login Form</h4>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">account_circle</i> 
                        <asp:TextBox ID="txtUserNameBox" runat="server"></asp:TextBox>
                        <label for="txtUserNameBox">UserName</label>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="center red-text" ControlToValidate="txtUserNameBox" ErrorMessage="Please enter Username"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ValidateEmptyText="true" Display="Dynamic"  CssClass="center red-text" ControlToValidate="txtUserNameBox" ErrorMessage="Incorrect UserName"></asp:CustomValidator>
               
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">lock</i> 
                        <asp:TextBox ID="txtPasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                        <label for="txtPasswordBox">Password</label>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="center red-text" ControlToValidate="txtPasswordBox" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>               
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ValidateEmptyText="true" Display="Dynamic"  CssClass="center red-text" ControlToValidate="txtPasswordBox" ErrorMessage="Incorrect Password"></asp:CustomValidator>
                </div>
                <div class="row">
                    <div class="input-field col s12 m12 l12  login-text">
                        <asp:CheckBox ID ="rememberme" runat="server"  Text ="remember me" />
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn-flat blue lighten-1 white-text waves-ripple" Text="Login" OnClick="btnLogin_Click">
                        </asp:LinkButton>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6 m6 l6">
                        <p class="margin medium-small"><a href="Register.aspx">Register Now!</a></p>
                    </div>
                    <div class="input-field col s6 m6 l6">
                        <p class="margin right-align medium-small"><a href="forgot-password.html">Forgot password?</a></p>
                    </div>
                </div>
            </div>
        </div>
       </div>
        <div class="fixed-action-btn">
            <a href="Home.aspx" class="btn-floating btn-large waves-effect waves-light blue"><i class="material-icons">store</i></a>
        </div>
    </form>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/materialize/materialize.js"></script>
    
</body>
</html>
