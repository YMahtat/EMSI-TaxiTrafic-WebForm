<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="TaxiTrafic.HomeAdmin" %>


<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    ACCEUIL ADMIN
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li>HOME-ADMIN</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />
    <div style="width:98%" class="cp-reservation-box cp-login-box">
        <div class="cp-heading-style1">
            <h2><span>ADMIN HOME</span></h2>
        </div>
        <div class="inner-holder">
            <label>NOM ADMIN : </label>
            <asp:TextBox  ID="name" runat="server" Enabled="false"></asp:TextBox>              
        </div>
        <div class="inner-holder">
            <label>TELEPHONE ADMIN : </label>
            <asp:TextBox  ID="phone" runat="server" Enabled="false"></asp:TextBox>              
        </div>
        <div class="inner-holder">
            <label>@-MAIL ADMIN : </label>
            <asp:TextBox  ID="email" runat="server" Enabled="false"></asp:TextBox>              
        </div>

    </div>
    <br /><br />
    <div style="width:98%" class="cp-reservation-box table-responsive">
        <h4>ADMIN SYSTEME INFORMATIONS : </h4>
        <table  style="width: 130%;text-align:center" class="table">
            <tr style="text-align:center">
                <th style="text-align:center">&nbsp;Nombre d'utilisateur : &nbsp;</th>
                <th style="text-align:center">&nbsp;Nombre de Taxis Operationnel (TaxiDriver) : &nbsp;</th>
                <th style="text-align:center">&nbsp;Nombre de Clients : &nbsp;</th>
                <th style="text-align:center">&nbsp;Nombre Total Courses : &nbsp;</th>
                <th style="text-align:center">&nbsp;Nombre Total Courses d'Abonnées (Periodique) : &nbsp;</th>
                <th style="text-align:center">&nbsp;Nombre Courses d'Aujourd'hui : &nbsp;</th>
            </tr>
            <tr style="text-align:center">
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>

                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                </td>
            </tr>
           
        </table>
    </div>
    
    <br /><br />
</asp:Content>


<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
