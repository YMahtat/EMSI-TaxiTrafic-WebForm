<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="TaxiTrafic.ManageUser" %>


<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    Gestion Utilisateurs
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="#">HOME</a></li>
    <li>GESTION-UTILISATEURS</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />

    <div class="cp-heading-style1">
        <h2><span>LISTE UTILISATEURS</span></h2>
    </div>

    <div class="row"></div>
        <asp:GridView OnRowUpdating="GridView1_RowUpdating" OnRowDeleted="GridView1_RowDeleted"   ID="GridView1" runat="server" ShowFooter="true" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="EntityDataUsers" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="424px" style="margin-bottom: 0px; margin-right: 161px;" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="ID" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="NOM" SortExpression="LAST_NAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="nomEdit" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="**" ControlToValidate="nomEdit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black" ID="nom" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PRENOM" SortExpression="FIRST_NAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="prenomEdit" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="**" ControlToValidate="prenomEdit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black" ID="prenom" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TELEPHONE" SortExpression="PHONE">
                    <EditItemTemplate>
                        <asp:TextBox  ID="phoneEdit" runat="server" Text='<%# Bind("PHONE") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="**" ControlToValidate="phoneEdit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black" ID="phone" runat="server" TextMode="Phone"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("PHONE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="@-MAIL" SortExpression="EMAIL">
                    <EditItemTemplate>
                        <asp:TextBox ID="emailEdit" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="**" ControlToValidate="emailEdit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black" ID="email" runat="server" TextMode="Email"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PASSWORD" SortExpression="PASSWORD">
                    <EditItemTemplate>
                        <asp:TextBox TextMode="Password" ID="passEdit" runat="server" Text='<%# Bind("PASSWORD") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="**" ControlToValidate="passEdit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black" ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        **SECRET**
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PROFIL" SortExpression="PROFIL">
                    <EditItemTemplate>
                        <asp:DropDownList runat="server" Text='<%# Bind("PROFIL") %>' ID="PRFIL">
                            <asp:ListItem Value="1" Text="Administrateur"></asp:ListItem>
                            <asp:ListItem Value="2" Text="TaxiDriver"></asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ForeColor="Black" ID="profil" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="1">Administrateur</asp:ListItem>
                            <asp:ListItem Value="2">TaxiDriver</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:DropDownList runat="server" Text='<%# Bind("PROFIL") %>' ID="labelPRFIL" Enabled="False" >
                            <asp:ListItem Value="1" Text="Administrateur"></asp:ListItem>
                            <asp:ListItem Value="2" Text="TaxiDriver"></asp:ListItem>
                        </asp:DropDownList>
                        
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                            <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" runat="server" Text="Mettre à jour" CommandName="Update" CausesValidation="True" ID="LinkButton1"  />
                            &nbsp;&nbsp;
                            <asp:Button  Style="color: #D82A2B" class="cp-btn-style1" runat="server"     Text="Annuler" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" />
                        </div>
                        
                    </EditItemTemplate>
                    <FooterTemplate>
                        <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                            <asp:Button ID="Ajout" class="cp-btn-style1" runat="server" ForeColor="#0099FF" Text="AJOUTER" OnClick="Ajout_Click" />
                            <br />
                            <asp:Label ForeColor="Red" ID="Required" runat="server"></asp:Label>
                        </div>
                    </FooterTemplate>
                    <ItemTemplate>
                         <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                            <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" ID="Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="MODIFIER" CommandArgument='<%# Container.DataItemIndex%>'   />
                            &nbsp;&nbsp;
                            <asp:Button  Style="color: #D82A2B" class="cp-btn-style1" ID="Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="SUPPRIMER" CommandArgument='<%# Container.DataItemIndex%>'    />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle BackColor="AliceBlue" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <asp:EntityDataSource runat="server" ID="EntityDataUsers" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntitySetName="Users"></asp:EntityDataSource>

        <asp:Panel ID="Panel1" runat="server" Visible="false">
             <div style="padding-right: 0px; margin-right: 0px;text-align:center" class="cp-booking-outer">
                            
                   <asp:Button  Style="color: midnightblue" class="cp-btn-style1" ID="AddUser" runat="server" Text="AJOUTER DE NOUVEAUX UTILISATEURS" Width="897px" OnClick="AddUser_Click" Font-Bold="True" Font-Names="Century Gothic" Height="68px"  />

             </div>
        </asp:Panel>
    <br /><br />
    <div class="row"></div>

    <br /><br />
    <br /><br />
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
