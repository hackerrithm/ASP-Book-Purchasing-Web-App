<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseConfirmation.aspx.cs" Inherits="PurchaseConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation</title>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <!--Import materialize.css-->
      <link href="../Content/materialize/css/materialize.min.css" rel="stylesheet" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body style="background-color:  lightgrey;">
    <form id="form1" runat="server">
    <div>

        		<br />
		<br />
		<br />

        <div class="container center-align">
            <div>
                <br />
                <br />
                <div class="card-panel hoverable white darken-4">
                    <div class="row">

                        <h2 class="orange-text darken-2 center-align">CONGRATS </h2>
                        <br />
                        <i class="large material-icons lime-text">done</i>
                        <h4 class="text-blue center-align">Your purchase has been submitted</h4>
                        <br />
                        <a href="PurchasePage.aspx" id="btnHome" class="btn waves-ripple white-text text-darken-2 blue darken-1">Back</a>

                    </div>
                </div>
            </div>
        </div>
    
    </div>
    </form>
     <script src="../Scripts/materialize/materialize.js"></script>
    <script src="../Scripts/jquery-3.1.1.js"></script>
</body>
</html>
