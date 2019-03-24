<%@ Page Title="" Language="C#" MasterPageFile="~/TaxiDriverMaster.master" AutoEventWireup="true" CodeBehind="HomeTaxiDriver.aspx.cs" Inherits="TaxiTrafic.HomeTaxiDriver" %>


<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    ACCEUIL Taxi-Driver
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li>HOME-TaxiDriver</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />
    <div style="width:98%" class="cp-reservation-box cp-login-box">
        <div class="cp-heading-style1">
            <h2><span>Taxi-Driver HOME</span></h2>
        </div>
        <div class="inner-holder">
            <label>NOM  : </label>
            <asp:TextBox  ID="name" runat="server" Enabled="false"></asp:TextBox>              
        </div>
        <div class="inner-holder">
            <label>TELEPHONE  : </label>
            <asp:TextBox  ID="phone" runat="server" Enabled="false"></asp:TextBox>              
        </div>
        <div class="inner-holder">
            <label>@-MAIL : </label>
            <asp:TextBox  ID="email" runat="server" Enabled="false"></asp:TextBox>              
        </div>
        <br />

         <div class="inner-holder">
            <label>TAXI-ID : </label>
            <asp:TextBox  ID="taxi_id" runat="server" Enabled="false"></asp:TextBox>              
        </div>
        <div class="inner-holder">
            <label>MATRICULE-TAXI : </label>
            <asp:TextBox  ID="taxi_matricule" runat="server" Enabled="false"></asp:TextBox>              
        </div>
        <div class="inner-holder">
            <label>TYPE-TAXI : </label>
            <asp:TextBox  ID="taxi_type" runat="server" Enabled="false"></asp:TextBox>              
        </div>

    </div>
    <br /><br />
    <div style="width:98%" class="cp-reservation-box table-responsive">
        <h4>TAXI-DRIVER COURSES INFORMATIONS : </h4>
        <table  style="width: 130%;text-align:center" class="table">
            <tr style="text-align:center">
                <th style="text-align:center">&nbsp;Nombre Total de mes Courses : &nbsp;</th>
                <th style="text-align:center">&nbsp;Mes Courses d'Aujourd'hui : &nbsp;</th>
            </tr>
            <tr style="text-align:center">
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
           
        </table>
    </div>
    
    <br /><br />
</asp:Content>



<asp:Content ID="Content5" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
