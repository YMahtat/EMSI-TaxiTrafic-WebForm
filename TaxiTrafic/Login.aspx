<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaxiTrafic.Login" %>


<asp:Content ID="Content4" ContentPlaceHolderID="BANNER_IMG" runat="server">
    <img width="1800" height="492" src="images/banner/inner-banner-img-03.jpg" alt="">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    AUTHENTIFICATION
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="index.html">ACCEUIL</a></li>
    <li class="active">LOGIN</li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <section  class="cp-reservation-section pd-tb80">
        <div class="container">
            <div class="cp-heading-style1">
                <h2><span>CONNEXION</span> : </h2>
            </div>
            <!--Reservation Box Start-->
            <div class="cp-reservation-box cp-login-box">
                <h3><span>(ESPACE EMPLOYÉS)</span><br />Accéder à votre compte O&M TaxiTrafic</h3>
                    <div class="inner-holder">
                        <asp:Label ForeColor="Red" runat="server" ID="ErrorTOP" Text=""></asp:Label>
                    </div>
                    <div class="inner-holder">
                        <label>LOGIN (@-mail) : </label>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        <asp:TextBox  ID="email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                    <div class="inner-holder">
                        <label>PASSWORD : </label>
                        <asp:TextBox ID="password" runat="server" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--<input type="password" pattern="[a-zA-Z ]+" required="" name="Password" placeholder="Password">--%>
                    </div>
                    <div class="inner-holder">
                        <%--<button type="submit" class="submit">Login</button>--%>
                        <asp:Button ID="ButtonLogin" runat="server" Text="CONNEXION" CssClass="submit" OnClick="ButtonLogin_Click" />
                        <a href="#" class="lost-pw">MOT DE PASSE PERDU ?</a>
                    </div>
                    <div class="inner-holder">
                        <asp:Label ForeColor="Red" runat="server" ID="ErrorButtom" Text=""></asp:Label>
                    </div>
                    
            </div><!--Reservation Box End-->
        </div>
    </section><!--Reservation Section End-->

     

</asp:Content>
