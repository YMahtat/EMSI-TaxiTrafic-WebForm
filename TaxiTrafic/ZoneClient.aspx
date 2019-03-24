<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.master" AutoEventWireup="true" CodeBehind="ZoneClient.aspx.cs" Inherits="TaxiTrafic.ZoneClient" %>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    ZONE CLIENT <small>(RENSEIGNEMENT)</small>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li>ZONE-CLIENT</li>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <div style="font-size:130%" >
        <br />
        <div class="row"></div>
        <div class="col-xs-1"></div>
        <div class="col-xs-11">
               <h4>Pour réserver une course de taxi, il faut contacter via le téléphone l'un des gestionnaire : </h4>
        </div>
        <div class="row"></div>
        
        <br />

        <div class="row"></div>
        <div class="col-xs-1"></div>
        <div class="col-xs-10" >
            <div class="row"></div>
            <div class="col-xs-1"></div>
            <div class="col-xs-11">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="R" CellPadding="4" ForeColor="#333333" GridLines="None" Width="948px" Height="110px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField />
                            <asp:BoundField FooterStyle-HorizontalAlign="Left"  DataField="LAST_NAME" HeaderText="NOM" ReadOnly="True" SortExpression="LAST_NAME">
                                <FooterStyle HorizontalAlign="Left" Font-Size="Large"></FooterStyle>
                                <HeaderStyle Font-Size="X-Large"  />
                            </asp:BoundField>
                            <asp:BoundField FooterStyle-HorizontalAlign="Left" DataField="FIRST_NAME" HeaderText="PRENOM" ReadOnly="True" SortExpression="FIRST_NAME">
                                <FooterStyle HorizontalAlign="Left" Font-Size="Large"></FooterStyle>
                                <HeaderStyle Font-Size="X-Large"  />
                            </asp:BoundField>
                            <asp:BoundField FooterStyle-HorizontalAlign="Left" DataField="PHONE" HeaderText="TELPHONE" ReadOnly="True" SortExpression="PHONE">
                                <FooterStyle HorizontalAlign="Left" Font-Size="Large"></FooterStyle>
                                <HeaderStyle Font-Size="X-Large"  />
                            </asp:BoundField>
                            <asp:BoundField FooterStyle-HorizontalAlign="Left" DataField="EMAIL" HeaderText="@-MAIL" ReadOnly="True" SortExpression="EMAIL">
                                <FooterStyle HorizontalAlign="Left" Font-Size="Large"></FooterStyle>
                                <HeaderStyle Font-Size="X-Large"  />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <PagerTemplate>
                            <br />
                            <br />
                        </PagerTemplate>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
            </div>
            <div class="row"></div>


            
            <asp:EntityDataSource runat="server" ID="R" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Users" Select="it.[LAST_NAME], it.[FIRST_NAME], it.[PHONE], it.[EMAIL]" Where="it.[PROFIL] = 1"></asp:EntityDataSource>
        </div>
        <div class="col-xs-1"></div>
        <div class="row"></div>
        <br />
        <div class="row"></div>
        <div class="col-xs-1"></div>
        <div class="col-xs-11">
                <p>
                
                    <b>&nbsp;&nbsp;REMARQUE : </b> Pour des services après courses, et/ou des précisions sur les courses veuillez contacter le gestionnaire par courrier électronique via son @-mail. 
                </p>
        </div>
        <div class="row"></div>
        <br />
        <br />
    </div>
</asp:Content>


<%--<asp:Content ContentPlaceHolderID="ScriptInstruct" runat="server">
    <script type="text/javascript">
        $("#MAIN_CONTENT_PAGE_CONTENT_GridView1").css("size", "200%");
    </script>
</asp:Content>--%>
