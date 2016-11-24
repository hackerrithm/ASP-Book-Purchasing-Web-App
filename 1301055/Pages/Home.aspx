<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <!--Import materialize.css-->
      <link href="../Content/materialize/css/materialize.min.css" rel="stylesheet" />
      <link href="../Content/custom-styles/Home-StyleSheet.css" rel="stylesheet" />
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
            <div>
                <!-- slider -->
                <div class="slider">
                    <ul class="slides">
                        <li>
                            <img src="../images/image1-bookSlider.jpg" />
                            <div class="caption center-align">
                                <h2 class="white-text lighten-5">Read from the most popular</h2><h2 class="white-text text-darken-2"> books in our collection</h2>
                                <a class="waves-effect waves-light btn-large red">START READING</a>
                                <h5 class="white-text text-darken-3">Experience the fun!!!</h5>

                                <div class="card-panel hoverable z-depth-5 light-blue white-text">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th data-field="id">Name</th>
                                                <th data-field="name">Item Name</th>
                                                <th data-field="price">Item Price</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>Alvin</td>
                                                <td>Eclair</td>
                                                <td>$0.87</td>
                                            </tr>
                                            <tr>
                                                <td>Alan</td>
                                                <td>Jellybean</td>
                                                <td>$3.76</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </li>
                        <li>
                            <img src="../images/image2-bookSlider.jpg" />
                            <div class="caption centers-align">
                                <h2 class="amber-text text-darken-2">Speed up development</h2>
                                <a class="waves-effect waves-green btn-large lime">CHECK OUT</a>
                                <h5 class="white-text text-darken-3">Tripple your productivity!!!</h5>
                            </div>
                        </li>
                        <li>
                            <img src="../images/image3-bookSlider.jpg" />
                            <div class="caption left-align">
                                <h2 class="amber-text text-darken-2">Big Data</h2>
                                <a class="waves-effect waves-ripple btn-large blue">DIVE IN</a>
                                <h5 class="white-text text-darken-3">Listen now with </h5><h4>Hexewatch</h4>
                            </div>
                        </li>
                        <li>
                            <img src="../images/image4-bookSlider.jpg" />
                            <div class="caption center-align">
                                <div class="card-panel hoverable z-depth-3 black">
                                    <h2 class="purple-text text-darken-2">KIDS</h2>
                                    <a class="waves-effect waves-ripple btn-large purple">CODE</a>
                                    <h5 class="white-text text-darken-3">Learn and play!</h5>
                                </div>

                            </div>
                        </li>
                        <li>
                            <img src="../images/image6-bookSlider.jpg" />
                            <div class="caption right-align">
                                <h2 class="green-text text-darken-2">Developers</h2>
                                <h4>-all books are 30% off this Firday</h4>
                                <a class="waves-effect waves-ripple btn-large orange black-text text-darken-2">GET NOW</a>
                                <h3 class="white-text text-darken-3">$39.99</h3>
                            </div>
                        </li>
                        <li>
                            <img src="../images/image7-bookSlider.jpg" />
                            <div class="caption left-align">
                                <div class="card-panel black hoverable z-depth-3">
                                    <h2 class="purple-text text-darken-2">Data Scientist</h2>
                                    <a class="waves-effect waves-light btn-large lime black-text text-darken-3">READ BOOKS</a>
                                    <h5 class="white-text text-darken-3">$66.99</h5>
                                </div>

                            </div>
                        </li>
                    </ul>
                </div>  <!-- slider ends -->   
            </div>
        </div>

        <section class="white darken-1">
            <br />
            <h4 class="blue-grey-text center">Popular</h4>
            <div class="row">
                <div class="col s2">
                    <div class="card hoverable z-depth-3">
                        <div class="card-image">
                            <img src="../images/book1-iphone.jpg" height="250" width="70" />
                            <span class="card-title card-panel black text-white">Bestseller</span>
                        </div>
                        <div class="card-content">
                            <p>
                               <i class="small material-icons amber-text">grade grade grade grade grade</i>
                            </p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="btn-flat waves-ripple green white-text">$39.99</a>
                        </div>
                    </div>
                </div>
                <div class="col s2">
                    <div class="card hoverable z-depth-3">
                        <div class="card-image">
                            <img src="../images/book2-java.jpg" height="250" width="70" />
                            <span class="card-title card-panel black text-white">Bestseller</span>
                        </div>
                        <div class="card-content">
                            <p>
                               <i class="small material-icons amber-text">grade grade grade grade grade</i>
                            </p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="btn-flat waves-ripple green white-text">$39.99</a>
                        </div>
                    </div>
                </div>
                <div class="col s2">
                    <div class="card hoverable z-depth-3">
                        <div class="card-image">
                            <img src="../images/book3-csharp.jpg" height="250" width="70" />
                            <span class="card-title card-panel black text-white">Bestseller</span>
                        </div>
                        <div class="card-content">
                            <p>
                               <i class="small material-icons amber-text">grade grade grade grade grade</i>
                            </p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="btn-flat waves-ripple green white-text">$39.99</a>
                        </div>
                    </div>
                </div>
                <div class="col s2">
                    <div class="card hoverable z-depth-3">
                        <div class="card-image">
                            <img src="../images/book4-fsharp.jpg" height="250" width="70" />
                            <span class="card-title card-panel black text-white">Bestseller</span>
                        </div>
                        <div class="card-content">
                            <p>
                               <i class="small material-icons amber-text">grade grade grade grade grade</i>
                            </p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="btn-flat waves-ripple green white-text">$39.99</a>
                        </div>
                    </div>
                </div>
                <div class="col s2">
                    <div class="card hoverable z-depth-3">
                        <div class="card-image">
                            <img src="../images/book5-c.jpg" height="250" width="70" />
                            <span class="card-title card-panel black text-white">Bestseller</span>
                        </div>
                        <div class="card-content">
                            <p>
                               <i class="small material-icons amber-text">grade grade grade grade grade</i>
                            </p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="btn-flat waves-ripple green white-text">$39.99</a>
                        </div>
                    </div>
                </div>
                <div class="col s2">
                    <div class="card hoverable z-depth-3">
                        <div class="card-image">
                            <img src="../images/book6-c-plus-plus.jpg" height="250" width="70" />
                            <span class="card-title card-panel black text-white">Bestseller</span>
                        </div>
                        <div class="card-content">
                            <p>
                               <i class="small material-icons amber-text">grade grade grade grade grade</i>
                            </p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="btn-flat waves-ripple green white-text">$39.99</a>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />

        </section>

        <section class="white teal-text center large">
            <div class="container">
                <h2 class="purple-text">Search thousands of books</h2>
                <h4 class="black-text">at your own convenience</h4>
                <asp:TextBox ID="databaseSearcher" runat="server" Font-Size="Larger" TextMode="Search" CssClass="input-field white blue-text" placeholder="Search here"></asp:TextBox>
                <h5 class="black-text">finding the book of your choice have never been</h5>
                <h3 class="purple-text shades-text">EASIER</h3>
                <br />
                <h2 class="purple-text">Choose a category</h2>
                <h4 class="black-text"><a href="#">Blah1 </a><a href="#">Blah2 </a><a href="#">Blah3 </a><a href="#">Blah4 </a></h4>
            </div>
            

        </section>
        <div class="section grey lighten-5">

            <!--   Icon Section   -->
            <div class="row">
                <div class="col s12 m4">
                    <div class="icon-block">
                        <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
                        <h5 class="center">Speeds up development</h5>

                        <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
                    </div>
                </div>

                <div class="col s12 m4">
                    <div class="icon-block">
                        <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
                        <h5 class="center">User Experience Focused</h5>

                        <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
                    </div>
                </div>

                <div class="col s12 m4">
                    <div class="icon-block">
                        <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
                        <h5 class="center">Easy to work with</h5>

                        <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
                    </div>
                </div>
            </div>

        </div>
            <br />
            <br />

            <div class="section">
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
        <div class="fixed-action-btn">
            <a href="Login.aspx" class="btn-floating btn-large waves-effect waves-light blue"><i class="material-icons">perm_identity</i></a>
        </div>

    </form>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/custom-scripts/Home-JavaScript.js"></script>
    <script src="../Scripts/materialize/materialize.js"></script>
    
    
</body>
</html>
