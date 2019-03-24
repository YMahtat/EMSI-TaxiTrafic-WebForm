<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="ManagePeriodicCourses.aspx.cs" Inherits="TaxiTrafic.ManagePeriodicCourses" %>



<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    <small>GESTION COMING-PERIODIQUES-COURSES</small>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
     <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>COMING-PERIODIC-COURSES</li>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
     <br /><br />
    <div class="cp-heading-style1">
        <h2><span><small>GESTION DES COMING-PERIODIQUES-COURSES <small>(COURSES PERIODIQUES VALABLES OU À VENIR)</small> :</small></span></h2>
    </div>
    <div class="row"></div>

    <asp:GridView HeaderStyle-HorizontalAlign="Center" ID="GridView1" ShowFooter="true" Width="100%" runat="server" DataSourceID="EntityDataSource1" AutoGenerateColumns="False" DataKeyNames="ID" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="278px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderStyle-HorizontalAlign="Center"  DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="JOUR" SortExpression="DAY">
                <EditItemTemplate>
                    <asp:DropDownList runat="server" Text='<%# Bind("DAY") %>' ID="TextBox1">
                        <asp:ListItem Value="0">Lundi</asp:ListItem>
                        <asp:ListItem Value="1">Mardi</asp:ListItem>
                        <asp:ListItem Value="2">Mercredi</asp:ListItem>
                        <asp:ListItem Value="3">Jeudi</asp:ListItem>
                        <asp:ListItem Value="4">Vendredi</asp:ListItem>
                        <asp:ListItem Value="5">Samedi</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList runat="server" Text='<%# Bind("DAY") %>' ID="Label1" Enabled="false">
                        <asp:ListItem Value="0">Lundi</asp:ListItem>
                        <asp:ListItem Value="1">Mardi</asp:ListItem>
                        <asp:ListItem Value="2">Mercredi</asp:ListItem>
                        <asp:ListItem Value="3">Jeudi</asp:ListItem>
                        <asp:ListItem Value="4">Vendredi</asp:ListItem>
                        <asp:ListItem Value="5">Samedi</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderStyle-HorizontalAlign="Center" DataField="STARTING_TIME" HeaderText="HEURE DEPART" SortExpression="STARTING_TIME"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderStyle-HorizontalAlign="Center" DataField="STARTING_ADDRESS" HeaderText="ADRESSE DEPART" SortExpression="STARTING_ADDRESS"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderStyle-HorizontalAlign="Center" DataField="ARRIVAL_ADDRESS" HeaderText="ADRESSE DESTIONATION" SortExpression="ARRIVAL_ADDRESS"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderStyle-HorizontalAlign="Center" DataField="LIMIT_DATE" HeaderText="DATE LIMITE" DataFormatString="{0:dd/MM/yyyy}" SortExpression="LIMIT_DATE"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-HorizontalAlign="Center"  HeaderText="CLIENT" SortExpression="client_ID">
                <EditItemTemplate>
                    <asp:DropDownList runat="server" Text='<%# Bind("client_ID") %>' ID="TextBox2" DataSourceID="EntityDataSource2" DataTextField="FULL" DataValueField="ID"></asp:DropDownList>
                    <asp:EntityDataSource runat="server" ID="EntityDataSource2" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Clients" Select="it.[ID], it.[LAST_NAME]+ ' ' + it.[FIRST_NAME] + ' ('+ it.[PHONE] + ') ' as FULL"></asp:EntityDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList runat="server" Text='<%# Bind("client_ID") %>' ID="Label2" DataSourceID="EntityDataSource3" DataTextField="FULL" DataValueField="ID" Enabled="false"></asp:DropDownList>
                    <asp:EntityDataSource runat="server" ID="EntityDataSource3" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Clients" Select="it.[ID], it.[LAST_NAME]+ ' ' + it.[FIRST_NAME] + ' ('+ it.[PHONE] + ') ' as FULL"></asp:EntityDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>

            
            <asp:TemplateField>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;</ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                        <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" runat="server" Text="Mettre à jour" CommandName="Update" CausesValidation="True" ID="LinkButton1" />
                        &nbsp;&nbsp;
                            <asp:Button Style="color: #D82A2B" class="cp-btn-style1" runat="server" Text="Annuler" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" />
                    </div>
                </EditItemTemplate>
                <ItemTemplate>
                    <div style="padding-right: 0px; margin-right: 0px" class="cp-booking-outer">
                        <asp:Button Style="color: #8FBC7A" class="cp-btn-style1" ID="Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="MODIFIER" />
                        &nbsp;
                            <asp:Button Style="color: #D82A2B" class="cp-btn-style1" ID="Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="SUPPRIMER" />
                    </div>
                </ItemTemplate>
            </asp:TemplateField>

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

    <asp:EntityDataSource runat="server" ID="EntityDataSource1" ConnectionString="name=TaxiTraficEntities" DefaultContainerName="TaxiTraficEntities" EnableFlattening="False" EntitySetName="Periodic_Courses" EnableDelete="True" EnableInsert="True" EnableUpdate="True" Where="it.[LIMIT_DATE] > @DateNow OR it.[LIMIT_DATE] is NULL">
        <WhereParameters>
            <asp:Parameter Name="DateNow" Type="DateTime" DefaultValue='<%= DateTime.Now.ToShortDateString() %>' />
        </WhereParameters>
    </asp:EntityDataSource>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <div style="padding-right: 0px; margin-right: 0px;text-align:center" class="cp-booking-outer">
                            
            <asp:Button  Style="color: midnightblue" class="cp-btn-style1" ID="AddCourses" runat="server" Text="AJOUTER DE NOUVELLES COURSES" Width="897px" OnClick="AddCourses_Click" Font-Bold="True" Font-Names="Century Gothic" Height="68px"  />

        </div>
    </asp:Panel>
    <div class="row"></div>

    <br /><br />
</asp:Content>


<asp:Content ID="Content6" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ScriptInstruct" runat="server">
    <script type="text/javascript">
        $(document).ready
            (
                function ()
                {
                    $("#<%= GridView1.ClientID %> th").css("text-align","center");
                    $("#<%= GridView1.ClientID %> th").css("font-size", "120%");
                }
            );
    </script>
</asp:Content>
