<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="AddTaxi.aspx.cs" Inherits="TaxiTrafic.AddTaxi" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    AJOUT TAXI
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>AJOUTER-TAXI</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">


    <br />
    <br />
    <section style="width:95%"  class="cp-reservation-section pd-tb80">
        <div style="width:100%" class="container">
            <div class="cp-heading-style1">
                <h2><span>AJOUTER TAXI</span></h2>
            </div>
            <!--Reservation Box Start-->
            
            <div class="cp-reservation-box cp-login-box">
                    <div class="inner-holder">
                        <asp:Label ForeColor="Red" runat="server" ID="ErrorTOP" Text=""></asp:Label>
                    </div>
                    <div class="inner-holder">
                        <label>MATRICULE : </label>
                        <%--<input type="text" placeholder="Email Address" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">--%>
                        <asp:TextBox  ID="matricule" runat="server" Height="40px" Width="400px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champs Obligatoire ***" ControlToValidate="matricule" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                    
                    <div class="inner-holder">
                        <label>TYPE : </label>
                        <div class="booking-date">
                            <div class="inner inner2">
                                <asp:DropDownList  ID="type" runat="server" Height="40px" Width="400px">
                                    <asp:ListItem Value="PETIT">PETIT</asp:ListItem>
                                    <asp:ListItem Value="MOYEN">MOYEN</asp:ListItem>
                                    <asp:ListItem Value="GRAND">GRAND</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        
                    </div>
                    
                    <div class="inner-holder">
                        <label>TAXI DRIVER : </label>
                        <div class="booking-date">
                            <div class="inner inner2">
                                <asp:DropDownList ID="driver" runat="server" Height="40px" Width="400px" DataSourceID="EntityDataSource1" DataTextField="FULLx" DataValueField="ID">
                                </asp:DropDownList>
                                <asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Users" Select="it.[ID], it.[FIRST_NAME] + ' ' + it.[LAST_NAME] + ' (' + it.[EMAIL] + ') ' as FULLx" Where="it.[PROFIL] = 2"></asp:EntityDataSource>
                            </div>
                        </div>
                    </div>



                    <div class="inner-holder">
                        <%--<button type="submit" class="submit">Login</button>--%>
                        <asp:Button ID="AddButton" runat="server" Text="AJOUTER" CssClass="submit" OnClick="AddButton_Click" />
                        <br /><br />
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
