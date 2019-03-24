<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="AddClient.aspx.cs" Inherits="TaxiTrafic.addClient" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    AJOUTER CLIENT
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>AJOUT CLIENT</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">


     <section style="width:95%"  class="cp-reservation-section pd-tb80">
        <div style="width:95%" class="container">
            <div class="cp-heading-style1">
                <h2><span>AJOUTER CLIENT</span></h2>
            </div>
            <!--Reservation Box Start-->
            <div class="cp-reservation-box cp-login-box">
                
                    <div class="inner-holder">
                        <label>NOM DE FAMILLE : </label>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        <asp:TextBox  ID="last_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="last_name" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                    
                    <div class="inner-holder">
                        <label>PRENOM : </label>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        <asp:TextBox  ID="first_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="first_name" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                    
                    <div class="inner-holder">
                        <label>TELEPHONE : </label>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        <asp:TextBox  ID="phone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="phone" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>

                    <div class="inner-holder">
                        <%--<button type="submit" class="submit">Login</button>--%>
                        <asp:Button ID="AddButton" runat="server" Text="AJOUTER" CssClass="submit" OnClick="AddButton_Click" />
                        
                    </div>
            </div><!--Reservation Box End-->
        </div>
    </section><!--Reservation Section End-->
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
