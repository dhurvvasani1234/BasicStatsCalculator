<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Statistics Calculator
    </title>

    <%-- Bootstrap --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <%-- stylesheet --%>
    <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>

    <h2>Statistics Calculator</h2>
    
    <p>Enter three numbers and click Submit button to find out the statistics</p>

    <form id="form1" runat="server">
        <div>      
            <div class="row label-row">
                <div class="col-2 label-column">
                  <span">First Number:</span>
                </div>
                <div class="col-10">
                    <asp:TextBox runat="server" ID="FirstNumber" />
                </div>
            </div>

            <div class="row label-row">
                <div class="col-2 label-column">
                  <span">Second Number:</span>
                </div>
                <div class="col-10">
                 <asp:TextBox runat="server" ID="SecondNumber" />
                </div>
            </div>

            <div class="row label-row">
                <div class="col-2 label-column">
                  <span">Third Number:</span>
                </div>
                <div class="col-10">
                    <asp:TextBox runat="server" ID="ThirdNumber" />
                </div>
            </div>
        </div>
        
        <asp:Button ID="calculateButton" runat="server" OnClick="calculateButtonClick" Text="Calculate" CssClass="calculate-button" />
    </form>

    <div class="error-container">
        <asp:Label ID="ErrorLabel" runat="server" Text="Label" CssClass="error"></asp:Label>
    </div>
     

      <div>
        <h3>Statistics of the numbers you entered</h3>

        <div class="results">
            <div class="row label-row">
                <div class="col-2 label-column">
                  <span">Maximum:</span>
                </div>
                <div class="col-10">
                 <asp:Label ID="MaximumLabel" runat="server" Text=""></asp:Label>
                </div>
            </div>

            <div class="row label-row">
                <div class="col-2 label-column">
                    <span">Minimum:</span>
                </div>
                <div class="col-10">
                    <asp:Label ID="MinimumLabel" runat="server" Text=""></asp:Label>
                </div>
             </div>

            <div class="row label-row">
                <div class="col-2 label-column">
                    <span">Average:</span>
                </div>
                <div class="col-10">
                    <asp:Label ID="AverageLabel" runat="server" Text=""></asp:Label>
                </div>
            </div>

            <div class="row label-row">
                <div class="col-2 label-column">
                    <span">Total:</span>
                </div>
                <div class="col-10">
                    <asp:Label ID="TotalLabel" runat="server" Text=""></asp:Label>
                </div>
            </div>
          </div>
    
    </body>
</html>
