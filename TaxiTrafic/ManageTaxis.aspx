<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="ManageTaxis.aspx.cs" Inherits="TaxiTrafic.MangeTaxis" %>


<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    GESTION TAXIS
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="#">HOME</a></li>
    <li>GESTION-TAXIS</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />
    <div class="cp-heading-style1">
        <h2><span>LISTE DES TAXIs</span></h2>
    </div>
    <div class="row"></div>
    <div class="col-xs-2"></div>
    <div class="col-xs-8">
        <div style="text-align: left">
        <asp:GridView OnRowDeleted="GridView1_RowDeleted" FooterStyle-BackColor="Aqua"  ID="GridView1" runat="server" ShowFooter="true" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="EntityDataTaxi" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="155px" Width="939px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="ID" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("ID") %>' ID="Label1"></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("ID") %>' ID="Label1"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="MATRICULE" SortExpression="MATRICULE">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("MATRICULE") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="matricule" runat="server" ForeColor="Black"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("MATRICULE") %>' ID="Label2"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TYPE" SortExpression="TYPE">
                    <EditItemTemplate>
                        <asp:DropDownList runat="server" Text='<%# Bind("TYPE") %>' ID="TextBox2">
                            <asp:ListItem Value="PETIT">PETIT</asp:ListItem>
                            <asp:ListItem Value="MOYEN">MOYEN</asp:ListItem>
                            <asp:ListItem Value="GRAND">GRAND</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="type" runat="server" ForeColor="Black">
                            <asp:ListItem Value="PETIT">PETIT</asp:ListItem>
                            <asp:ListItem Value="MOYEN">MOYEN</asp:ListItem>
                            <asp:ListItem Value="GRAND">GRAND</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("TYPE") %>' ID="Label3"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TaxiDriver" SortExpression="driver_ID">
                    <EditItemTemplate>
                        <asp:DropDownList runat="server" Text='<%# Bind("driver_ID") %>' ID="TextBox3" DataSourceID="EntityDataDriver" DataTextField="FULL" DataValueField="ID" Enabled="true"></asp:DropDownList>
                        <asp:EntityDataSource runat="server" ID="EntityDataDriver" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Users" EntityTypeFilter="User" Select="it.[ID],it.[FIRST_NAME] + ' '+ it.[LAST_NAME] + ' (' + it.[EMAIL] + ' )' as FULL " Where="it.[PROFIL] = 2"></asp:EntityDataSource>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ForeColor="Black" ID="driver" runat="server" DataSourceID="EntityDataSource1" DataTextField="FULL" DataValueField="ID">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=TaxiTraficEntities" DefaultContainerName="TaxiTraficEntities" EnableFlattening="False" EntitySetName="Users" Select="it.[ID],it.[FIRST_NAME] + ' '+ it.[LAST_NAME] + ' (' + it.[EMAIL] + ' )' as FULL " Where="it.[PROFIL] = 2">
                        </asp:EntityDataSource>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:DropDownList runat="server" Text='<%# Bind("driver_ID") %>' ID="Label4"  DataSourceID="EntityDataDriver2" DataTextField="FULL" DataValueField="ID" Enabled="false"></asp:DropDownList>
                        <asp:EntityDataSource runat="server" ID="EntityDataDriver2" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Users" EntityTypeFilter="User" Select="it.[ID],it.[FIRST_NAME] + ' '+ it.[LAST_NAME] + ' (' + it.[EMAIL] + ' )' as FULL" Where="it.[PROFIL] = 2"></asp:EntityDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                            <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" runat="server" Text="Mettre à jour" CommandName="Update" CausesValidation="True" ID="LinkButton1" />
                            &nbsp;&nbsp;
                            <asp:Button Style="color: #D82A2B" class="cp-btn-style1" runat="server" Text="Annuler" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" />
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
                            <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" ID="Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="MODIFIER" CommandArgument='<%# Container.DataItemIndex%>' />
                            &nbsp;
                            <asp:Button Style="color: #D82A2B" class="cp-btn-style1" ID="Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="SUPPRIMER" CommandArgument='<%# Container.DataItemIndex%>' />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>

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
        </div>
        <asp:EntityDataSource runat="server" ID="EntityDataTaxi" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True"  EntitySetName="Taxis">
            
        </asp:EntityDataSource>
        <asp:Panel ID="Panel1" runat="server" Visible="false">
             <div style="padding-right: 0px; margin-right: 0px;text-align:center" class="cp-booking-outer">
                            
                   <asp:Button  Style="color: midnightblue" class="cp-btn-style1" ID="AddTaxi" runat="server" Text="AJOUTER NOUVEAU TAXI" Width="897px" OnClick="AddTaxi_Click" Font-Bold="True" Font-Names="Century Gothic" Height="68px"  />

             </div>
        </asp:Panel>
    </div>
    <div class="col-xs-2"></div>
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
