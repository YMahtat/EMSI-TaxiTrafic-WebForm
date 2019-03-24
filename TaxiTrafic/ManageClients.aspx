<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="ManageClients.aspx.cs" Inherits="TaxiTrafic.AdminClient" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    Gestion Clients
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>GESTION-CLIENTS</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />
    <div class="cp-heading-style1">
        <h2><span>LISTE DES CLIENTS</span></h2>
    </div>
    <div class="row"></div>
    <div class="col-xs-1"></div>
    <div class="col-xs-10">
        <asp:GridView OnRowDeleted="ClientGrid_RowDeleted" ShowFooter="True" ID="ClientGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ClientEntity" CellPadding="4" ForeColor="#333333" GridLines="None" Height="364px" Width="1119px" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="ID" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="idEdit" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NOM" SortExpression="LAST_NAME">
                    <EditItemTemplate>
                        <asp:TextBox ForeColor="Black"  ID="nomEdit" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="nomEdit" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black"  ID="nomAdd" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PRENOM" SortExpression="FIRST_NAME">
                    <EditItemTemplate>
                        <asp:TextBox ForeColor="Black"  ID="prenomEdit" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="prenomEdit" ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black"  ID="prenomAdd" runat="server"></asp:TextBox>
                         
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TELEPHONE" SortExpression="PHONE">
                    <EditItemTemplate>
                        <asp:TextBox ForeColor="Black"  ID="phoneEdit" runat="server" Text='<%# Bind("PHONE") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="phoneEdit" ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ForeColor="Black" ID="phoneAdd" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("PHONE") %>'></asp:Label>
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
                            
                            <asp:Button  Style="color: midnightblue" class="cp-btn-style1" ID="Add" runat="server" Text="AJOUTER" Width="115px" OnClick="Add_Click"  />
                             <br />
                             <asp:label runat="server" ForeColor="Red" Font-Size="XX-Small" id="Required"></asp:label>
                        </div>
                        
                    </FooterTemplate>
                    <ItemTemplate>
                        <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                            <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" ID="Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="MODIFIER"    />
                            &nbsp;
                            <asp:Button  Style="color: #D82A2B" class="cp-btn-style1" ID="Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="SUPPRIMER"   />
                        </div>

                    </ItemTemplate>
                    <ItemStyle Width="20%" />

                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="AliceBlue" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:EntityDataSource runat="server" ID="ClientEntity" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntitySetName="Clients"   ></asp:EntityDataSource>

        <asp:Panel ID="Panel1" runat="server" Visible="false">
             <div style="padding-right: 0px; margin-right: 0px;text-align:center" class="cp-booking-outer">
                            
                   <asp:Button  Style="color: midnightblue" class="cp-btn-style1" ID="AddClients" runat="server" Text="AJOUTER DE NOUVEAUX CLIENTS" Width="897px" OnClick="AddClients_Click" Font-Bold="True" Font-Names="Century Gothic" Height="68px"  />

             </div>
        </asp:Panel>
    </div>
    <div class="col-xs-1"></div>
    <br /><br />
    <div class="row"></div>
    <br /><br />
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
    
</asp:Content>
