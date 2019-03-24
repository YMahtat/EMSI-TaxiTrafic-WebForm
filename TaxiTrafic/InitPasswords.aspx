<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InitPasswords.aspx.cs" Inherits="TaxiTrafic.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TaxiTrafic</title>

    <!---Custom CSS-->
    <link rel="stylesheet" href="css/custom.css" type="text/css" />
    <!---BootStrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <!---Theme Color CSS-->
    <link rel="stylesheet" href="css/theme-color.css" type="text/css" />
    <!---Responsive CSS-->
    <link rel="stylesheet" href="css/responsive.css" type="text/css" />
    <!---Owl Slider CSS-->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" />
    <!---Font Awesome Icons CSS-->        
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
    <!---IconMoon Icons CSS-->        
    <link rel="stylesheet" href="css/icomoon.css" type="text/css" />
    <!---Font Family Special CSS-->
    <link href='https://fonts.googleapis.com/css?family=Exo+2:400,300,600,700,900,800,200,100,500,400italic' rel='stylesheet' type='text/css' />



</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1 style="width:100%;text-align:center;font-size:550%">
                PASSWORDS INITIALISED !!!

            </h1>
            <h2 style="width:100%;text-align:center">
                <span style="width:100%">
                      <asp:Button Font-Size="300%" class="choose-btn" ID="Button1" runat="server" Text="HOME" OnClick="Button1_Click" Height="181px" Width="100%"/>
                </span>
            </h2>



        </div>
    </form>
</body>
</html>
