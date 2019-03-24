<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="ArchiveCourses.aspx.cs" Inherits="TaxiTrafic.ArchiveCourses" %>


<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
     <small>ARCHIVE DONE-COURSES</small>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>ARCHIVED-COURSES</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />
    <div class="cp-heading-style1">
        <h2><span><small>ARCHIVE DES COURSES-EFFECTUÉES :</small></span></h2>
    </div>
    <div class="row"></div>

    <asp:GridView Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="EntityDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="52px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"></asp:BoundField>
            <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="STARTING_DAY" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DATE DEPART" SortExpression="STARTING_DAY"></asp:BoundField>
            <asp:BoundField DataField="STARTING_TIME" HeaderText="HEURE DEPART" SortExpression="STARTING_TIME"></asp:BoundField>
            <asp:BoundField DataField="STARTING_ADDRESS" HeaderText="ADRESSE DEPART" SortExpression="STARTING_ADDRESS"></asp:BoundField>
            <asp:BoundField DataField="ARRIVAL_ADDRESS" HeaderText="ADRESSE D'ARRIVÉE" SortExpression="ARRIVAL_ADDRESS"></asp:BoundField>
            <asp:BoundField DataField="ARRIVAL_TIME" HeaderText="DATE-HEURE D'ARRIVÉE" SortExpression="ARRIVAL_TIME"></asp:BoundField>
            <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="CLIENT" SortExpression="client_ID">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("client_ID") %>' ID="TextBox1"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList Enabled="false" runat="server" Text='<%# Bind("client_ID") %>' ID="Label1" DataSourceID="EntityDataSource2" DataTextField="FULL" DataValueField="ID"></asp:DropDownList>
                    <asp:EntityDataSource runat="server" ID="EntityDataSource2" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Clients" Select="it.[ID], it.[FIRST_NAME] + ' ' +  it.[LAST_NAME] + ' ('+ it.[PHONE] + ') ' as FULL"></asp:EntityDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="TaxiDriver" SortExpression="taxi_ID">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("taxi_ID") %>' ID="TextBox2"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList Enabled="false" runat="server" Text='<%# Bind("Taxi.driver_ID") %>' ID="Label2" DataSourceID="EntityDataSource3" DataTextField="FULL" DataValueField="ID" AppendDataBoundItems="true">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:EntityDataSource runat="server" ID="EntityDataSource3" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Users" Select="it.[ID],it.[FIRST_NAME] + ' '+ it.[LAST_NAME] + ' (' + it.[EMAIL] + ' )' as FULL " Where="it.[PROFIL] = 2"></asp:EntityDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField><ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate></asp:TemplateField>

        </Columns>
        <EditRowStyle BackColor="#999999"></EditRowStyle>

        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>

    <asp:EntityDataSource Include="Taxi" runat="server" ID="EntityDataSource1" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Courses" Where="it.[STARTING_DAY] < @DateNow">
            <WhereParameters>
                <asp:Parameter Name="DateNow" Type="DateTime" DefaultValue='<%= DateTime.Now.ToShortDateString() %>' />
            </WhereParameters>
    </asp:EntityDataSource>
    <div class="row"></div>

    <br /><br />
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
