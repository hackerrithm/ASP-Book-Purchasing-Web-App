﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <!--Import materialize.css-->
      <link href="../Content/materialize/css/materialize.min.css" rel="stylesheet" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navigation bar -->
        <div class="navbar-fixed">
            <nav>
                <div class="nav-wrapper white">
                    <a href="home.aspx" class="brand-logo" id="image-logo-id">
                        <img src="../images/company-logo1.png" width="60" height="60" />                        
                    </a>


                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>

                    <ul id="dropdown1" class="dropdown-content white">
                        <li><a href="#!" class="blue-text">Computer Science <img src="../images/company-logo1.png" width="60" height="60" /></a></li>
                        <li><a href="#!" class="blue-text">Computer Engineering <img src="../images/company-logo1.png" width="60" height="60" /></a></li>
                        <li class="divider"></li>
                        <li><a href="#!" class="blue-text">Information Technology<img src="../images/company-logo1.png" width="60" height="60" /></a></li>
                    </ul>

                    <ul class="right hide-on-med-and-down">
                       
                        <li><a href="About.aspx" class="black-text">About</a></li>
                        <li><a href="Contact.aspx" class="black-text">Contact</a></li>
                        <li><a href="#" class="black-text">Help</a></li>
                        <li><a class="dropdown-button black-text" href="#!" data-activates="dropdown1">Categories<i class="material-icons right">arrow_drop_down</i></a></li>
                        <li><a class="waves-effect waves-light btn purple" id="login-button" href="Login.aspx">Login</a></li>
                        <li><a class="waves-effect waves-light btn red darken-1" id="register-button" href="Register.aspx">Register</a></li>
                    </ul>


                </div>
         </nav>
        </div>
        <!-- Navigation bar end --> 


        <div>
            <div class="container">
                <section class="white lighten-3">
                    <div class="purple-text center">
                        <h4>Send us a line</h4>
                        <div class="container">
                            <div class="row">
                                <br />
                                <h5 class="black-text">write to us
                                </h5>
                            </div>

                        </div>
                    </div>
                </section>
                  <div class="row">
                      <div class="col s12">
                          <div class="row">
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">account_circle</i>
                                  <asp:TextBox ID="icon_prefix" runat="server" CssClass="validate"></asp:TextBox>
                                  <label for="icon_prefix">Name</label>
                              </div>
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">phone</i>
                                  <asp:TextBox ID="icon_telephone" runat="server" CssClass="validate"></asp:TextBox>
                                  <label for="icon_telephone">Telephone</label>
                              </div>
                          </div>
                          <div class="row">
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">account_circle</i>
                                  <asp:TextBox ID="TextBox1" runat="server" CssClass="validate"></asp:TextBox>
                                  <label for="icon_prefix">Country/Region</label>
                              </div>
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">phone</i>
                                  <asp:TextBox ID="TextBox2" runat="server" CssClass="validate"></asp:TextBox>
                                  <label for="icon_telephone">Email</label>
                              </div>
                          </div>
                          <div class="row">
                              <div class="input-field col s12">
                                  <i class="material-icons prefix">account_circle</i>
                                  <asp:TextBox ID="TextBox3" runat="server" CssClass="validate"></asp:TextBox>
                                  <label for="icon_prefix">Message</label>
                              </div>
                          </div>
                          <div class="row">
                              <div class="input-field col s12">
                                  <asp:Button Text="Send" runat="server" ID="btnSendMessage" CssClass="btn-flat waves-orange orange text-darken-2 white-text" />
                              </div>
                          </div>
                      </div>
  </div>
            </div>
        </div>

        <section class="purple darken-3">
        <!-- footer -->
         <footer class="page-footer purple darken-3">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <img src="../images/company-logo1.png" width="120" height="120" />
                <h5 class="white-text">HEXEBOOK</h5>
                <p class="grey-text text-lighten-4">Purchase a book today.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Share</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="www.facebook.com">
                      <img src="../images/facebookicon.png" width="30" height="30" /> facebook.com</a></li>
                  <li><a class="grey-text text-lighten-3" href="www.twitter.com">
                      <img src="../images/twittericon.png" width="30" height="30" /> twitter.com</a></li>
                  <li><a class="grey-text text-lighten-3" href="www.linkedin.com">
                      <img src="../images/linkedinicon.png" width="30" height="30" /> linkedin.com</a></li>
                  <li><a class="grey-text text-lighten-3" href="www.instagram.com">
                      <img src="../images/instagramicon.png" width="30" height="30" /> instagram.com</a></li>
                </ul>
              </div>
            </div>
          </div>
             <div class="footer-countries">
                 <div class="container">
                     <div class="row">
                         <div class="col s1">
                             <h6 class="yellow-text">Australia</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">Brazil</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">Canada</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">China</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">France</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">Germany</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">India</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">Jamaica</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">Japan</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">Spain</h6>
                         </div>
                         <div class="col s1">
                             <h6 class="yellow-text">United Kingdom</h6>
                         </div>
                     </div>
                 </div>
             </div>
          <div class="footer-copyright">
            <div class="container">
            © 2016 hexebook.com 
            <a class="white-text text-lighten-4 right" href="#!">manga</a>
            <a class="white-text text-lighten-4 right" href="#!">comic - </a>
            <a class="white-text text-lighten-4 right" href="#!">fiction - </a>
            <a class="white-text text-lighten-4 right" href="#!">science and technology - </a>
            <a class="white-text text-lighten-4 right" href="#!">romance - </a>
            </div>
          </div>
        </footer>
        
        <!-- footer end -->  
        </section>
       

    </form>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/custom-scripts/Home-JavaScript.js"></script>
    <script src="../Scripts/materialize/materialize.js"></script>
    
    
</body>
</html>
