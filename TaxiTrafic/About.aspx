<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TaxiTrafic.About" %>


<asp:Content ID="Content2" ContentPlaceHolderID="BANNER_IMG" runat="server">
    <img width="1800" height="492" src="images/banner/inner-banner-img-02.jpg" alt="">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
        ABOUT US
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="index.html">ACCEUIL</a></li>
    <li class="active">À-PROPOS</li>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <section class="cp-why-choose-section2 pd-tb80">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-sm-12">
                    <figure class="cp-thumb choose-thumb">
                        <img  src="images/about.gif" alt="" class="img-circle">
                    </figure>
                </div>
                <div class="col-md-5 col-sm-12">
                    <!--Why Choose Text-->
                    <div style="padding-bottom:25px;margin-bottom:25px;" class="cp-why-choose-text">
                        <h2><span style="font-size:50%">Ste OUDADDA & MAHTAT TaxiTrafic</span> </h2>
                        <a href="ZoneClient.aspx" style="font-size:95%" class="choose-btn">APPELER POUR RESERVER VOTRE COURSE (ZONE-CLIENT)</a>
                        <h3>POURQUOI CHOISIR </h3>
                        <h2> <span style="font-size:97%">O&M TaxiTrafic</span> POUR VOTRE DEPLACEMENT COTIDIENT ? </h2>
                            
                        
                        <br />
                        <h4> VOICI POURQUOI : </h4>
                        <ul style="padding-bottom:25px;margin-bottom:25px;padding-top:25px;margin-top:25px;padding-left:25px;margin-left:25px;padding-right:25px;margin-right:25px;" class="cp-choose-list">
                            <li>Nous pouvons vous localiser très facilement et rapidement grâce à notre SI qui ce base sur google Maps</li>
                            <li>Notre système Informatique Géographique et satellite très performant sera faire les trajet le plus rapide</li>
                        </ul>
                        <a href="ZoneClient.aspx" class="cp-btn-style1">RESERVER MAINTENANT (ZONE-CLIENT)</a>
                    </div><!--Why Choose Text-->
                    

                </div>
                    
            </div>
        </div>
    </section><!--Why Choose Section End-->

    <!--Services Section Start-->
    <section style="min-width:500px;" class="cp-services-section pd-tb80">
        <div style="padding-bottom: 50px;margin-bottom: 50px;" class="container">
                <div class="cp-heading-style1">
                <h2>NOS <span>QUALITÉS</span></h2>
            </div>
            <!--Why Choose Listed-->
            <ul class="cp-why-choose-listed">
                <li>
                    <div class="cp-box">
                        <img src="images/why-choose-img-01.png" alt="">
                        <h3>RENTABILITE</h3>
                        
                        
                    </div>
                </li>
                    <li>
                    <div class="cp-box cp-box2">
                        <img src="images/why-choose-img-03.png" alt="">
                        <h3>OPTIMISATION</h3>
                        

                    </div>
                </li>
                <li>
                    <div class="cp-box">
                        <img src="images/why-choose-img-02.png" alt="">
                        <h3>GARANTIE</h3>
                        

                    </div>
                </li>
            </ul><!--Why Choose Listed End-->
        </div>
    </section><!--Services Section End-->

</asp:Content>


<asp:Content ID="Content6" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="AddScript" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ScriptInstruct" runat="server">
</asp:Content>
