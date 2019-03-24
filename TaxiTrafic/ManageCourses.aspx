<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="TaxiTrafic.ManageCourses" %>


<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    <small>GESTION COMING-COURSES</small>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>COMING-COURSES</li>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />
    <div class="cp-heading-style1">
        <h2><span><small>GESTION DES COMING-COURSES (COURSES À VENIR) :</small></span></h2>
    </div>
    <div class="row"></div>
    <asp:GridView OnRowDeleted="GridView1_RowDeleted" Style="margin-bottom: 0px;" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="EntityDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1370px" Height="133px" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:BoundField FooterStyle-HorizontalAlign="Left" DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"></asp:BoundField>
                <asp:TemplateField HeaderText="DATE DEPART" SortExpression="STARTING_DAY">
                    <EditItemTemplate>
                        <asp:TextBox TextMode="DateTime" runat="server" Text='<%# Bind("STARTING_DAY", "{0:dd/MM/yyyy}") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label TextMode="Date" runat="server" Text='<%# Bind("STARTING_DAY", "{0:dd/MM/yyyy}") %>' ID="Label1"></asp:Label>
                    </ItemTemplate>

                    <FooterStyle HorizontalAlign="Left"></FooterStyle>
                </asp:TemplateField>

                <asp:BoundField FooterStyle-HorizontalAlign="Left" DataField="STARTING_TIME" HeaderText="HEURE DEPART" SortExpression="STARTING_TIME"></asp:BoundField>
                <asp:BoundField FooterStyle-HorizontalAlign="Left" DataField="STARTING_ADDRESS" HeaderText="ADRESSE DEPART" SortExpression="STARTING_ADDRESS"></asp:BoundField>
                <asp:BoundField FooterStyle-HorizontalAlign="Left" DataField="ARRIVAL_ADDRESS" HeaderText="ADRESSE DESTINATION" SortExpression="ARRIVAL_ADDRESS"></asp:BoundField>
                <asp:TemplateField HeaderText="CLIENT" SortExpression="client_ID">
                    <EditItemTemplate>
                        <asp:DropDownList runat="server" Text='<%# Bind("client_ID") %>' ID="TextBox2" DataSourceID="EntityDataSource2" DataTextField="FULL" DataValueField="ID"></asp:DropDownList>
                        <asp:EntityDataSource runat="server" ID="EntityDataSource2" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Clients" Select="it.[ID], it.[LAST_NAME]+ ' ' + it.[FIRST_NAME] + ' ('+ it.[PHONE] + ') ' as FULL"></asp:EntityDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList runat="server" Enabled="false" Text='<%# Bind("client_ID") %>' ID="TextBox3" DataSourceID="EntityDataSource3" DataTextField="FULL" DataValueField="ID"></asp:DropDownList>
                        <asp:EntityDataSource runat="server" ID="EntityDataSource3" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Clients" Select="it.[ID], it.[LAST_NAME]+ ' ' + it.[FIRST_NAME] + ' ('+ it.[PHONE] + ') ' as FULL"></asp:EntityDataSource>
                    </ItemTemplate>

                    <FooterStyle HorizontalAlign="Left"></FooterStyle>
                </asp:TemplateField>

                <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                            <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" runat="server" Text="Mettre à jour" CommandName="Update" CausesValidation="True" ID="LinkButton1"  />
                            &nbsp;&nbsp;
                            <asp:Button  Style="color: #D82A2B" class="cp-btn-style1" runat="server"     Text="Annuler" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" />
                        </div>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                            <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" ID="Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="MODIFIER"    />
                            &nbsp;
                            <asp:Button  Style="color: #D82A2B" class="cp-btn-style1" ID="Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="SUPPRIMER"   />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Courses" EnableDelete="True" EnableInsert="True" EnableUpdate="True" Where="it.[STARTING_DAY] > @DateNow">
        <WhereParameters>
            <asp:Parameter Name="DateNow" Type="DateTime" DefaultValue='<%= DateTime.Now.ToShortDateString() %>' />
        </WhereParameters>
    </asp:EntityDataSource>
    <asp:Panel ID="Panel1" runat="server" >
            <div style="padding-right: 0px; margin-right: 0px;text-align:center" class="cp-booking-outer">
                            
                <asp:Button  Style="color: midnightblue" class="cp-btn-style1" ID="AddCourses" runat="server" Text="AJOUTER DE NOUVELLES COURSES" Width="897px" OnClick="AddCourses_Click" Font-Bold="True" Font-Names="Century Gothic" Height="68px"  />

            </div>
    </asp:Panel>
    <div class="row"></div>

    <br /><br />
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
