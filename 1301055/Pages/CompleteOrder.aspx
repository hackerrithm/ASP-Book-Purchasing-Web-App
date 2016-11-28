<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompleteOrder.aspx.cs" Inherits="CompleteOrder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/custom-styles/Account-Page-StyleSheet.css" rel="stylesheet" />
    <title>Complet Order - Checkout</title>
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
                <div class="col-md-12">
                    <h3>Select a shipping address</h3>
                    <hr />
                    <h5>Blah blah data
                    </h5>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="Label1" runat="server" Text="Username" CssClass=""></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtUserName" runat="server" CssClass=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserName" runat="server" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass=""></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtUserAddress" runat="server" CssClass=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtUserAddress" runat="server" ErrorMessage="Please enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblCity" runat="server" Text="City" CssClass=""></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCity" runat="server" CssClass=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtCity" runat="server" ErrorMessage="Please enter City" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblState" runat="server" Text="State" CssClass=""></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtState" runat="server" CssClass=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtState" runat="server" ErrorMessage="Please enter State" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblZipCode" runat="server" Text="ZipCode" CssClass=""></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtZipCode" runat="server" CssClass=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtZipCode" runat="server" ErrorMessage="Please enter Zip code" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblCountry" runat="server" Text="Country" CssClass=""></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlCountries" runat="server" CssClass="browser-default">
                            <asp:ListItem Value="AF">Afghanistan</asp:ListItem>
                            <asp:ListItem Value="AX">Åland Islands</asp:ListItem>
                            <asp:ListItem Value="AL">Albania</asp:ListItem>
                            <asp:ListItem Value="DZ">Algeria</asp:ListItem>
                            <asp:ListItem Value="AS">American Samoa</asp:ListItem>
                            <asp:ListItem Value="AD">Andorra</asp:ListItem>
                            <asp:ListItem Value="AO">Angola</asp:ListItem>
                            <asp:ListItem Value="AI">Anguilla</asp:ListItem>
                            <asp:ListItem Value="AQ">Antarctica</asp:ListItem>
                            <asp:ListItem Value="AG">Antigua and Barbuda</asp:ListItem>
                            <asp:ListItem Value="AR">Argentina</asp:ListItem>
                            <asp:ListItem Value="AM">Armenia</asp:ListItem>
                            <asp:ListItem Value="AW">Aruba</asp:ListItem>
                            <asp:ListItem Value="AU">Australia</asp:ListItem>
                            <asp:ListItem Value="AT">Austria</asp:ListItem>
                            <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
                            <asp:ListItem Value="BS">Bahamas</asp:ListItem>
                            <asp:ListItem Value="BH">Bahrain</asp:ListItem>
                            <asp:ListItem Value="BD">Bangladesh</asp:ListItem>
                            <asp:ListItem Value="BB">Barbados</asp:ListItem>
                            <asp:ListItem Value="BY">Belarus</asp:ListItem>
                            <asp:ListItem Value="BE">Belgium</asp:ListItem>
                            <asp:ListItem Value="BZ">Belize</asp:ListItem>
                            <asp:ListItem Value="BJ">Benin</asp:ListItem>
                            <asp:ListItem Value="BM">Bermuda</asp:ListItem>
                            <asp:ListItem Value="BT">Bhutan</asp:ListItem>
                            <asp:ListItem Value="BO">Bolivia</asp:ListItem>
                            <asp:ListItem Value="BA">Bosnia and Herzegovina</asp:ListItem>
                            <asp:ListItem Value="BW">Botswana</asp:ListItem>
                            <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>
                            <asp:ListItem Value="BR">Brazil</asp:ListItem>
                            <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>
                            <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>
                            <asp:ListItem Value="BG">Bulgaria</asp:ListItem>
                            <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>
                            <asp:ListItem Value="BI">Burundi</asp:ListItem>
                            <asp:ListItem Value="KH">Cambodia</asp:ListItem>
                            <asp:ListItem Value="CM">Cameroon</asp:ListItem>
                            <asp:ListItem Value="CA">Canada</asp:ListItem>
                            <asp:ListItem Value="CV">Cape Verde</asp:ListItem>
                            <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
                            <asp:ListItem Value="CF">Central African Republic</asp:ListItem>
                            <asp:ListItem Value="TD">Chad</asp:ListItem>
                            <asp:ListItem Value="CL">Chile</asp:ListItem>
                            <asp:ListItem Value="CN">China</asp:ListItem>
                            <asp:ListItem Value="CX">Christmas Island</asp:ListItem>
                            <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
                            <asp:ListItem Value="CO">Colombia</asp:ListItem>
                            <asp:ListItem Value="KM">Comoros</asp:ListItem>
                            <asp:ListItem Value="CG">Congo</asp:ListItem>
                            <asp:ListItem Value="CD">Congo, The Democratic Republic of The</asp:ListItem>
                            <asp:ListItem Value="CK">Cook Islands</asp:ListItem>
                            <asp:ListItem Value="CR">Costa Rica</asp:ListItem>
                            <asp:ListItem Value="CI">Cote D'ivoire</asp:ListItem>
                            <asp:ListItem Value="HR">Croatia</asp:ListItem>
                            <asp:ListItem Value="CU">Cuba</asp:ListItem>
                            <asp:ListItem Value="CY">Cyprus</asp:ListItem>
                            <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
                            <asp:ListItem Value="DK">Denmark</asp:ListItem>
                            <asp:ListItem Value="DJ">Djibouti</asp:ListItem>
                            <asp:ListItem Value="DM">Dominica</asp:ListItem>
                            <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>
                            <asp:ListItem Value="EC">Ecuador</asp:ListItem>
                            <asp:ListItem Value="EG">Egypt</asp:ListItem>
                            <asp:ListItem Value="SV">El Salvador</asp:ListItem>
                            <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>
                            <asp:ListItem Value="ER">Eritrea</asp:ListItem>
                            <asp:ListItem Value="EE">Estonia</asp:ListItem>
                            <asp:ListItem Value="ET">Ethiopia</asp:ListItem>
                            <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>
                            <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>
                            <asp:ListItem Value="FJ">Fiji</asp:ListItem>
                            <asp:ListItem Value="FI">Finland</asp:ListItem>
                            <asp:ListItem Value="FR">France</asp:ListItem>
                            <asp:ListItem Value="GF">French Guiana</asp:ListItem>
                            <asp:ListItem Value="PF">French Polynesia</asp:ListItem>
                            <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>
                            <asp:ListItem Value="GA">Gabon</asp:ListItem>
                            <asp:ListItem Value="GM">Gambia</asp:ListItem>
                            <asp:ListItem Value="GE">Georgia</asp:ListItem>
                            <asp:ListItem Value="DE">Germany</asp:ListItem>
                            <asp:ListItem Value="GH">Ghana</asp:ListItem>
                            <asp:ListItem Value="GI">Gibraltar</asp:ListItem>
                            <asp:ListItem Value="GR">Greece</asp:ListItem>
                            <asp:ListItem Value="GL">Greenland</asp:ListItem>
                            <asp:ListItem Value="GD">Grenada</asp:ListItem>
                            <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>
                            <asp:ListItem Value="GU">Guam</asp:ListItem>
                            <asp:ListItem Value="GT">Guatemala</asp:ListItem>
                            <asp:ListItem Value="GG">Guernsey</asp:ListItem>
                            <asp:ListItem Value="GN">Guinea</asp:ListItem>
                            <asp:ListItem Value="GW">Guinea-bissau</asp:ListItem>
                            <asp:ListItem Value="GY">Guyana</asp:ListItem>
                            <asp:ListItem Value="HT">Haiti</asp:ListItem>
                            <asp:ListItem Value="HM">Heard Island and Mcdonald Islands</asp:ListItem>
                            <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>
                            <asp:ListItem Value="HN">Honduras</asp:ListItem>
                            <asp:ListItem Value="HK">Hong Kong</asp:ListItem>
                            <asp:ListItem Value="HU">Hungary</asp:ListItem>
                            <asp:ListItem Value="IS">Iceland</asp:ListItem>
                            <asp:ListItem Value="IN">India</asp:ListItem>
                            <asp:ListItem Value="ID">Indonesia</asp:ListItem>
                            <asp:ListItem Value="IR">Iran, Islamic Republic of</asp:ListItem>
                            <asp:ListItem Value="IQ">Iraq</asp:ListItem>
                            <asp:ListItem Value="IE">Ireland</asp:ListItem>
                            <asp:ListItem Value="IM">Isle of Man</asp:ListItem>
                            <asp:ListItem Value="IL">Israel</asp:ListItem>
                            <asp:ListItem Value="IT">Italy</asp:ListItem>
                            <asp:ListItem Value="JM">Jamaica</asp:ListItem>
                            <asp:ListItem Value="JP">Japan</asp:ListItem>
                            <asp:ListItem Value="JE">Jersey</asp:ListItem>
                            <asp:ListItem Value="JO">Jordan</asp:ListItem>
                            <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
                            <asp:ListItem Value="KE">Kenya</asp:ListItem>
                            <asp:ListItem Value="KI">Kiribati</asp:ListItem>
                            <asp:ListItem Value="KP">Korea, Democratic People's Republic of</asp:ListItem>
                            <asp:ListItem Value="KR">Korea, Republic of</asp:ListItem>
                            <asp:ListItem Value="KW">Kuwait</asp:ListItem>
                            <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>
                            <asp:ListItem Value="LA">Lao People's Democratic Republic</asp:ListItem>
                            <asp:ListItem Value="LV">Latvia</asp:ListItem>
                            <asp:ListItem Value="LB">Lebanon</asp:ListItem>
                            <asp:ListItem Value="LS">Lesotho</asp:ListItem>
                            <asp:ListItem Value="LR">Liberia</asp:ListItem>
                            <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>
                            <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
                            <asp:ListItem Value="LT">Lithuania</asp:ListItem>
                            <asp:ListItem Value="LU">Luxembourg</asp:ListItem>
                            <asp:ListItem Value="MO">Macao</asp:ListItem>
                            <asp:ListItem Value="MK">Macedonia, The Former Yugoslav Republic of</asp:ListItem>
                            <asp:ListItem Value="MG">Madagascar</asp:ListItem>
                            <asp:ListItem Value="MW">Malawi</asp:ListItem>
                            <asp:ListItem Value="MY">Malaysia</asp:ListItem>
                            <asp:ListItem Value="MV">Maldives</asp:ListItem>
                            <asp:ListItem Value="ML">Mali</asp:ListItem>
                            <asp:ListItem Value="MT">Malta</asp:ListItem>
                            <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>
                            <asp:ListItem Value="MQ">Martinique</asp:ListItem>
                            <asp:ListItem Value="MR">Mauritania</asp:ListItem>
                            <asp:ListItem Value="MU">Mauritius</asp:ListItem>
                            <asp:ListItem Value="YT">Mayotte</asp:ListItem>
                            <asp:ListItem Value="MX">Mexico</asp:ListItem>
                            <asp:ListItem Value="FM">Micronesia, Federated States of</asp:ListItem>
                            <asp:ListItem Value="MD">Moldova, Republic of</asp:ListItem>
                            <asp:ListItem Value="MC">Monaco</asp:ListItem>
                            <asp:ListItem Value="MN">Mongolia</asp:ListItem>
                            <asp:ListItem Value="ME">Montenegro</asp:ListItem>
                            <asp:ListItem Value="MS">Montserrat</asp:ListItem>
                            <asp:ListItem Value="MA">Morocco</asp:ListItem>
                            <asp:ListItem Value="MZ">Mozambique</asp:ListItem>
                            <asp:ListItem Value="MM">Myanmar</asp:ListItem>
                            <asp:ListItem Value="NA">Namibia</asp:ListItem>
                            <asp:ListItem Value="NR">Nauru</asp:ListItem>
                            <asp:ListItem Value="NP">Nepal</asp:ListItem>
                            <asp:ListItem Value="NL">Netherlands</asp:ListItem>
                            <asp:ListItem Value="AN">Netherlands Antilles</asp:ListItem>
                            <asp:ListItem Value="NC">New Caledonia</asp:ListItem>
                            <asp:ListItem Value="NZ">New Zealand</asp:ListItem>
                            <asp:ListItem Value="NI">Nicaragua</asp:ListItem>
                            <asp:ListItem Value="NE">Niger</asp:ListItem>
                            <asp:ListItem Value="NG">Nigeria</asp:ListItem>
                            <asp:ListItem Value="NU">Niue</asp:ListItem>
                            <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>
                            <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>
                            <asp:ListItem Value="NO">Norway</asp:ListItem>
                            <asp:ListItem Value="OM">Oman</asp:ListItem>
                            <asp:ListItem Value="PK">Pakistan</asp:ListItem>
                            <asp:ListItem Value="PW">Palau</asp:ListItem>
                            <asp:ListItem Value="PS">Palestinian Territory, Occupied</asp:ListItem>
                            <asp:ListItem Value="PA">Panama</asp:ListItem>
                            <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>
                            <asp:ListItem Value="PY">Paraguay</asp:ListItem>
                            <asp:ListItem Value="PE">Peru</asp:ListItem>
                            <asp:ListItem Value="PH">Philippines</asp:ListItem>
                            <asp:ListItem Value="PN">Pitcairn</asp:ListItem>
                            <asp:ListItem Value="PL">Poland</asp:ListItem>
                            <asp:ListItem Value="PT">Portugal</asp:ListItem>
                            <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
                            <asp:ListItem Value="QA">Qatar</asp:ListItem>
                            <asp:ListItem Value="RE">Reunion</asp:ListItem>
                            <asp:ListItem Value="RO">Romania</asp:ListItem>
                            <asp:ListItem Value="RU">Russian Federation</asp:ListItem>
                            <asp:ListItem Value="RW">Rwanda</asp:ListItem>
                            <asp:ListItem Value="SH">Saint Helena</asp:ListItem>
                            <asp:ListItem Value="KN">Saint Kitts and Nevis</asp:ListItem>
                            <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>
                            <asp:ListItem Value="PM">Saint Pierre and Miquelon</asp:ListItem>
                            <asp:ListItem Value="VC">Saint Vincent and The Grenadines</asp:ListItem>
                            <asp:ListItem Value="WS">Samoa</asp:ListItem>
                            <asp:ListItem Value="SM">San Marino</asp:ListItem>
                            <asp:ListItem Value="ST">Sao Tome and Principe</asp:ListItem>
                            <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>
                            <asp:ListItem Value="SN">Senegal</asp:ListItem>
                            <asp:ListItem Value="RS">Serbia</asp:ListItem>
                            <asp:ListItem Value="SC">Seychelles</asp:ListItem>
                            <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>
                            <asp:ListItem Value="SG">Singapore</asp:ListItem>
                            <asp:ListItem Value="SK">Slovakia</asp:ListItem>
                            <asp:ListItem Value="SI">Slovenia</asp:ListItem>
                            <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>
                            <asp:ListItem Value="SO">Somalia</asp:ListItem>
                            <asp:ListItem Value="ZA">South Africa</asp:ListItem>
                            <asp:ListItem Value="GS">South Georgia and The South Sandwich Islands</asp:ListItem>
                            <asp:ListItem Value="ES">Spain</asp:ListItem>
                            <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>
                            <asp:ListItem Value="SD">Sudan</asp:ListItem>
                            <asp:ListItem Value="SR">Suriname</asp:ListItem>
                            <asp:ListItem Value="SJ">Svalbard and Jan Mayen</asp:ListItem>
                            <asp:ListItem Value="SZ">Swaziland</asp:ListItem>
                            <asp:ListItem Value="SE">Sweden</asp:ListItem>
                            <asp:ListItem Value="CH">Switzerland</asp:ListItem>
                            <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>
                            <asp:ListItem Value="TW">Taiwan, Province of China</asp:ListItem>
                            <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>
                            <asp:ListItem Value="TZ">Tanzania, United Republic of</asp:ListItem>
                            <asp:ListItem Value="TH">Thailand</asp:ListItem>
                            <asp:ListItem Value="TL">Timor-leste</asp:ListItem>
                            <asp:ListItem Value="TG">Togo</asp:ListItem>
                            <asp:ListItem Value="TK">Tokelau</asp:ListItem>
                            <asp:ListItem Value="TO">Tonga</asp:ListItem>
                            <asp:ListItem Value="TT">Trinidad and Tobago</asp:ListItem>
                            <asp:ListItem Value="TN">Tunisia</asp:ListItem>
                            <asp:ListItem Value="TR">Turkey</asp:ListItem>
                            <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>
                            <asp:ListItem Value="TC">Turks and Caicos Islands</asp:ListItem>
                            <asp:ListItem Value="TV">Tuvalu</asp:ListItem>
                            <asp:ListItem Value="UG">Uganda</asp:ListItem>
                            <asp:ListItem Value="UA">Ukraine</asp:ListItem>
                            <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>
                            <asp:ListItem Value="GB">United Kingdom</asp:ListItem>
                            <asp:ListItem Value="US">United States</asp:ListItem>
                            <asp:ListItem Value="UM">United States Minor Outlying Islands</asp:ListItem>
                            <asp:ListItem Value="UY">Uruguay</asp:ListItem>
                            <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>
                            <asp:ListItem Value="VU">Vanuatu</asp:ListItem>
                            <asp:ListItem Value="VE">Venezuela</asp:ListItem>
                            <asp:ListItem Value="VN">Viet Nam</asp:ListItem>
                            <asp:ListItem Value="VG">Virgin Islands, British</asp:ListItem>
                            <asp:ListItem Value="VI">Virgin Islands, U.S.</asp:ListItem>
                            <asp:ListItem Value="WF">Wallis and Futuna</asp:ListItem>
                            <asp:ListItem Value="EH">Western Sahara</asp:ListItem>
                            <asp:ListItem Value="YE">Yemen</asp:ListItem>
                            <asp:ListItem Value="ZM">Zambia</asp:ListItem>
                            <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="ddlCountries" runat="server" ErrorMessage="Please select a country" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number" CssClass=""></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtContactNumber" runat="server" CssClass=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtContactNumber" runat="server" ErrorMessage="Please enter contact number" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Phone number" ControlToValidate="txtContactNumber" ForeColor="Red" Display="Dynamic" ValidationExpression="[0-9]{10}" ></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h3>Payment</h3>
                    <hr />
                    <h5>Blah blah data
                    </h5>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblPayMethod" runat="server" Text="Payment Method"></asp:Label>

                    </div>
                    <div class="col-sm-4">
                        <asp:RadioButtonList ID="rdbPaymentMethod" runat="server" OnSelectedIndexChanged="rdbPaymentMethod_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0" Text="Cash"></asp:ListItem>
                            <asp:ListItem Value="1" Text="CreditCard"></asp:ListItem>
                            <asp:ListItem Value="2" Text="DebitCard"></asp:ListItem>
                        </asp:RadioButtonList>

                        <asp:Label ID="lblCardData" runat="server" Text="Card Number:"></asp:Label>
                        <asp:TextBox ID="txtCardNumber" runat="server" placeholder="please enter card number"></asp:TextBox>

                    </div>
                </div>
                <div class="col-md-4">
                    <asp:CustomValidator ID="rdbValidator" runat="server"></asp:CustomValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <hr />
                    <h3><asp:Label ID="lblTotalText" runat="server" Text="Total Amount: "></asp:Label><asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>
                    </h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h3>Our Newsletter</h3>
                    <hr />
                    <h5>Blah blah data
                    </h5>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="lblSignup" runat="server" Text="Sign up for newsletter" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:CheckBox ID="chkbxSignUp" runat="server" AutoPostBack="true"></asp:CheckBox>
                    </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <div class="col-sm-4">
                        <asp:Label ID="Label2" runat="server" Text="Books" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                       <asp:ListBox ID="listBoxBookList" runat="server"></asp:ListBox>
                    </div>
                </div>
                <div class="col-md-4">
                </div>

            </div>

            <div class="row">
                <br />
                <br />
                <div class="col-md-8">
                    <div class="col-md-6">
                        <asp:Button ID="btnCompleteBookOrder" runat="server" Text="Complete Order and Continue" CssClass="btn btn-lg" OnClick="btnCompleteBookOrder_Click" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="btnGoBackToPurchasePage" runat="server" Text="Go Back" CssClass="btn btn-info" OnClick="btnCompleteBookOrder_Click" />

                    </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
    <script src="../Scripts/jquery-3.1.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</html>

