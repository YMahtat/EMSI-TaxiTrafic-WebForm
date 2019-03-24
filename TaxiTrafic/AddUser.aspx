<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="TaxiTrafic.AddUser" %>


<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    AJOUT UTILISATEUR
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>ADD-USER</li>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br />
    <br />
    <section style="width:95%"  class="cp-reservation-section pd-tb80">
        <div class="container">
            <div class="cp-heading-style1">
                <h2><span>AJOUTER UTILISATEUR</span></h2>
            </div>
            <!--Reservation Box Start-->
            
            <div class="cp-reservation-box cp-login-box">
                    <div class="inner-holder">
                        <asp:Label ForeColor="Red" runat="server" ID="ErrorTOP" Text=""></asp:Label>
                    </div>
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
                        <label>@-MAIL : </label>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        <asp:TextBox  ID="email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                    
                    <div class="inner-holder">
                        <label>PASSWORD : </label>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        <asp:TextBox TextMode="password"  ID="password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                    
                    <div class="inner-holder">
                        <label>TYPE PROFIL : </label>
                        <div class="booking-date">
                            <div class="inner inner2">
                                <asp:DropDownList  ID="profil" runat="server" Height="40px" Width="250px">
                                    <asp:ListItem Value="1">Administrator</asp:ListItem>
                                    <asp:ListItem Value="2">TaxiDriver</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>

                    <div class="inner-holder">
                        <%--<button type="submit" class="submit">Login</button>--%>
                        <asp:Button ID="AddButton" runat="server" Text="AJOUTER" CssClass="submit" OnClick="AddButton_Click" />
                        <br />
                        <asp:Label runat="server" ForeColor="Red" ID="ErrorLast" Text=""></asp:Label>
                        
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
