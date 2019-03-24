<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TaxiTrafic.contact" %>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="BANNER_IMG" runat="server">
</asp:Content>--%>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    CONTACTEZ-NOUS
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li>CONTACT-US</li>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
     <!--Contact Us Section Start-->
    <section class="cp-contact-us-section pd-tb80">
        <div class="container">
            <!--Contact Inner Holder Start-->
            <div class="cp-contact-inner-holder">
                <h3>RESTEZ EN CONTACT : </h3>

                <!--Get In Outer Start-->
                <div class="cp-get-in-outer">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="inner-holder">
                                <i class="fa fa-paper-plane"></i>
                                <a href="mailto:info@TaxiTrafic.ma">info@TaxiTrafic.ma</a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="inner-holder">
                                <i class="fa fa-map-marker"></i>
                                <p>TaxiTrafic.ma, Malabata, Rabat</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="inner-holder">
                                <i class="fa fa-phone"></i>
                                <p>+212 5 37 654545</p>
                            </div>
                        </div>
                    </div>
                </div><!--Get In Outer End-->

                <!--Form Box Start-->
                <div class="cp-form-box cp-form-box2">

                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="inner-holder">
                                    <input type="text" placeholder="VOTRE NOM" name="name" required pattern="[a-zA-Z ]+">
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="inner-holder">
                                    <input type="text" placeholder="@-MAIL" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="inner-holder">
                                    <div class="inner-holder">
                                                <input type="text" placeholder="SUJET" name="subject" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="inner-holder">
                                    <input type="text" placeholder="WEBSITE" name="website" >
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12">
                                <div class="inner-holder">
                                    <textarea placeholder="MESSAGE" name="comment" required></textarea>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12">
                                <div class="inner-holder">
                                    <asp:Button ID="Button1" class="btn-submit" runat="server" Text="ENVOYEZ" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>

                </div><!--Form Box End-->
            </div><!--Contact Inner Holder End-->
        </div>
    </section><!--Contact Us Section End-->

</asp:Content>



<asp:Content ID="Content6" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
