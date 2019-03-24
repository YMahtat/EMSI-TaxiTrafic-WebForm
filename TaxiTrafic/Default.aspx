<%@ Page Title="" Language="C#" MasterPageFile="~/HomeSimpleMaster.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TaxiTrafic.Default" %>



<asp:Content ID="Content6" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
                <!--Taxi Section Start-->
                <section class="cp-taxi-section pd-tb80">
                    <div class="container">
                        <div class="cp-heading-style1">
                            <h2>EXEMPLES DE NOS <span>TAXIs</span></h2>
                        </div>

                        <div class="cp-tabs-holder">
                          <!-- Nav tabs -->

                         <!-- Tab panes -->
                                <div class="row">
                                    <div class="col-md-4 col-sm-6">
                                        <!--Taxi Holder Start-->
                                        <article class="cp-taxi-holder">
                                            <figure class="cp-thumb">
                                                <img src="images/taxi-img-01.jpg" alt="">
                                            </figure>
                                            <div class="cp-text">
                                                <h3>Toyota Aygo</h3>
                                                <ul class="cp-meta-listed">
                                                    <li>Taille: <span>Petite</span></li>
                                                    <li>Remarque: <span>très confortable</span></li>
                                                </ul>
                                            </div>
                                        </article><!--Taxi Holder End-->
                                    </div>
                                     <div class="col-md-4 col-sm-6">
                                        <!--Taxi Holder Start-->
                                        <article class="cp-taxi-holder">
                                            <figure class="cp-thumb">
                                                <img src="images/taxi-img-02.jpg" alt="">
                                            </figure>
                                            <div class="cp-text">
                                                <h3>Fiat Doblo</h3>
                                                <ul class="cp-meta-listed">
                                                    <li>Taille: <span>Grande</span></li>
                                                    <li>Remarque: <span>confortable et spacieuse</span></li>
                                                </ul>
                                                
                                            </div>
                                        </article><!--Taxi Holder End-->
                                    </div>
                                     <div class="col-md-4 col-sm-6">
                                        <!--Taxi Holder Start-->
                                        <article class="cp-taxi-holder">
                                            <figure class="cp-thumb">
                                                <img src="images/taxi-img-03.jpg" alt="">
                                            </figure>
                                            <div class="cp-text">
                                                <h3>Peugeot 308</h3>
                                                <ul class="cp-meta-listed">
                                                     <li>Taille: <span>Moyenne</span></li>
                                                    <li>Remarque: <span>confortable</span></li>
                                                </ul>
                                                
                                            </div>
                                        </article><!--Taxi Holder End-->
                                    </div>
                                </div>
                            </div>    
                    </div>
                </section><!--Taxi Section End-->

                <!--Why Choose Section Start-->
                <section class="cp-why-choose-section pd-tb80">
                    <div class="container">
                        <!--Why Choose Text-->
                        <div class="cp-why-choose-text">
                            <h2><span style="font-size:50%">Ste OUDADDA & MAHTAT TaxiTrafic</span> </h2>
                            <a href="ZoneClient.aspx" style="font-size:95%" class="choose-btn">APPELER POUR RESERVER VOTRE COURSE (ZONE-CLIENT)</a>
                            <h3>POURQUOI CHOISIR </h3>
                            <h2> <span style="font-size:97%">O&M TaxiTrafic</span> POUR VOTRE DEPLACEMENT COTIDIENT ? </h2>
                            
                            <a href="ZoneClient.aspx" class="cp-btn-style1">RESERVER MAINTENANT (ZONE-CLIENT)</a>
                            <br />
                            <h4> VOICI POURQUOI : </h4>
                        </div><!--Why Choose Text-->

                        <!--Why Choose Listed-->
                        <ul class="cp-why-choose-listed">
                            <li >
                                <div class="cp-box">
                                    <img id="whyIMG" style="height:296px;width:380px" src="images/why-choose-img-01.png" alt="">
                                    <h3>RENTABILITE</h3>
                                    <span class="icon-cash19 icomoon"></span>
                                    <p id="why1"> 
                                       <br /><br /><br /><br /><br /><br />
                                        Nous offrons des tarifs plus bas que les taxis normaux <br /><span>(Petit Taxi - Taxi Zre9 ou Taxi 7mar) </span><br />en incluant tous le trajet .
                                        <br />Nous assourons aussi la course la plus confortable et le trajet le plus rapite et cela grâce à notre Système Informatique de suivi du taxi.
                                    </p>
                                </div>
                            </li>
                            <li >
                                <div class="cp-box cp-box2">
                                    <img id="whyIMG" style="height:296px;width:380px" src="images/why-choose-img-03.png" alt="">
                                    <h3 >OPTIMISATION</h3>
                                    <span class="icon-transport1105 icomoon"></span>
                                    <p id="why2">
                                         <br /><br /><br /><br /><br /><br />
                                        Nous offrons un système d'information géographique très preforment permetant de localiser votre emplacement et destination très rapidement et de façon optimiser en se basent sur Google Maps.

                                    </p>
                                    
                                </div>
                            </li>
                            <li >
                                <div class="cp-box">
                                    <img id="whyIMG" style="height:296px;width:380px" src="images/why-choose-img-02.png" alt="">
                                    <h3>GARANTIE</h3>
                                    <span class="icon-house158 icomoon"></span>
                                    <p id="why3">
                                        <br /><br /><br /><br /><br /><br />
                                        Nous Garantissons à nos client un service de transport complet et nous assurons tout la sécurité et 
                                        ceci depuis votre enmplacement à la destination avec un grand confort comme si vous êtes chez vous !!

                                    </p>
                                </div>
                            </li>
                        </ul><!--Why Choose Listed End-->
                        
                    </div>
                </section><!--Why Choose Section End-->

                <!--Parallax Section Start-->
                <section style="background-image:url('images/Google-Maps.jpg');background-position: center;background-repeat: no-repeat;background-size: cover;" class="cp-parallax-section">
                   <div id="cp-map-home"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-sm-12 col-md-offset-2">
                                <!--Parallax Box Start-->
                                <div class="cp-parallax-box">
                                   <h3 style="font-size:180%"><b>Pas sûr qu'il y a un meilleur service que le notre ? <br /></b><span>EXISTE-T-IL UN SERVICE PLUS RENTABLE QUE LE NOTRE ?</span></h3>
                                   <div class="cp-location-box">
                                       <h3>Essayer notre service</h3>
                                       <ul class="cp-location-listed">
                                           <li style="font-size:97%">Nous pouvons vous localiser très facilement et rapidement grâce à notre SI qui ce base sur google Maps</li>
                                           <li style="font-size:97%">Notre système Informatique Géographique et satellite très performant sera faire les trajet le plus rapide</li>
                                           <li>Essayer maintenant <a href="ZoneClient.aspx" class="cp-btn-style1">Service Client (ZONE-CLIENT)</a></li>
                                       </ul>
                                   </div> 
                                </div><!--Parallax Box End-->
                            </div>
                        </div>
                    </div>
                    <div class="animate-bus">
                        <img src="images/animate-bus2.png" alt="">
                    </div>
                </section><!--Parallax Section End-->


                 <!--Testimonial Section Start-->
                 <section class="cp-testimonial-section pd-tb80">
                     <div class="container">
                        <div class="cp-heading-style2">
                            <h2>DERNIERES <span>APPRECIATIONS</span></h2>
                        </div>
                        <div class="owl-carousel" id="cp-testimonial-slider">
                            <div class="item">
                                <div class="cp-testimonial-inner">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-8">
                                            <div class="cp-text">
                                                <strong>Fortement recommandé par nos clients etrangés</strong>
                                                <blockquote class="cp-blockquote">
                                                    Sabemos que el diferencial está en los detalles, y es por ello que nuestros se
                                                    vicios en alquiler de vehículos, tanto en el sector turístico como en el empr
                                                    sarial, se destacan por su calidad y buen gusto para brindarte una experien
                                                    cia única, segura y agradable.
                                                </blockquote>
                                                <span>ALBERTO FERTOBINY, Turista español</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <span class="cp-icon">
                                                <i class="fa fa-user"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                             <div class="item">
                                <div class="cp-testimonial-inner">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-8">
                                            <div class="cp-text">
                                                <strong>Fortement recommandé par nos clients etrangés</strong>
                                                <blockquote class="cp-blockquote">
                                                     Both in the tourism sector and in the empr
                                                     sarial, they stand out for their quality and good taste to give you an experience
                                                     We know that the differential is in the details, and that is why our
                                                     vices in car rental,.
                                                </blockquote>
                                                <span>MISS MARTINE KEANE, British tourist</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <span class="cp-icon">
                                                <i class="fa fa-user"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                             <div class="item">
                                <div class="cp-testimonial-inner">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-8">
                                            <div class="cp-text">
                                                <strong>Fortement recommandé par nos clients Marocains</strong>
                                                <blockquote class="cp-blockquote">
                                                     Nous savons que la différence est dans les détails, et c'est pourquoi O&M TaxiTrafic avec
                                                     ces services de location de voitures, tant dans le secteur du tourisme que dans le secteur
                                                     sarial, ils se distinguent par leur qualité et leur bon goût pour vous faire vivre une expérience
                                                     unique, sûr et agréable.
                                                </blockquote>
                                                <span>Hajar BADIRY, FIDELE CLIENTE O&M</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <span class="cp-icon">
                                                <i class="fa fa-user"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                     </div>
                 </section><!--Testimonial Section End-->

               

                 <!--News & Faq Section Start-->
                 <section class="cp-faq-section pd-tb80">
                    <div class="container">
                        <div class="cp-heading-style1">
                            <h2>Our News & <span>Faqs</span></h2>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <!--Testimonial Outer Start-->
                                <div class="cp-testimonial-outer">
                                    <div class="owl-carousel" id="cp-test-slider2">
                                        <div class="item">
                                            <!--Testimonial Box Strat-->
                                            <div class="cp-testimonial-box">
                                                <span class="date">Feb 12, 2016</span>
                                                <h4>Here is the best way  to collect your taxi</h4>
                                                <p>Speeding and minor offences are fine and will not incur any additional fee's. any other offences should be checked with our reservations  urna nibh ut,  etiam libero nisl, in magna fusce in feugia.... <a href="blog-detail.html">{+}</a></p>
                                                <div class="test-bottom">
                                                    <div class="thumb">
                                                        <img class="img-circle" src="images/test-sm-thumb.jpg" alt="">
                                                    </div>
                                                    <p>By Jennifer Freemean</p>
                                                </div>
                                            </div><!--Testimonial Box End-->
                                        </div>
                                         <div class="item">
                                            <!--Testimonial Box Strat-->
                                            <div class="cp-testimonial-box">
                                                <span class="date">Feb 20, 2016</span>
                                                <h4>Here is the best way  to collect your taxi</h4>
                                                <p>Speeding and minor offences are fine and will not incur any additional fee's. any other offences should be checked with our reservations  urna nibh ut,  etiam libero nisl, in magna fusce in feugia.... <a href="blog-detail.html">{+}</a></p>
                                                <div class="test-bottom">
                                                    <div class="thumb">
                                                        <img class="img-circle" src="images/test-sm-thumb.jpg" alt="">
                                                    </div>
                                                    <p>By Jennifer Freemean</p>
                                                </div>
                                            </div><!--Testimonial Box End-->
                                        </div>
                                         <div class="item">
                                            <!--Testimonial Box Strat-->
                                            <div class="cp-testimonial-box">
                                                <span class="date">June 2, 2016</span>
                                                <h4>Here is the best way  to collect your taxi</h4>
                                                <p>Speeding and minor offences are fine and will not incur any additional fee's. any other offences should be checked with our reservations  urna nibh ut,  etiam libero nisl, in magna fusce in feugia.... <a href="blog-detail.html">{+}</a></p>
                                                <div class="test-bottom">
                                                    <div class="thumb">
                                                        <img class="img-circle" src="images/test-sm-thumb.jpg" alt="">
                                                    </div>
                                                    <p>By allie johnfar</p>
                                                </div>
                                            </div><!--Testimonial Box End-->
                                        </div>
                                    </div>
                                    <a href="blog-detail.html" class="cp-read-more">More Blog Posts</a>
                                </div><!--Testimonial Outer End-->
                            </div>
                            <div class="col-md-6">
                                <!--Accordian Item Start-->
                                <div class="cp-accordian-item">
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                      <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="cp-tab-One">
                                          <div class="panel-title">
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#cp-tab-collapse1" aria-expanded="true" aria-controls="cp-tab-collapse1">
                                             What do your rates include?
                                            </a>
                                          </div>
                                        </div>
                                        <div id="cp-tab-collapse1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="cp-tab-One">
                                          <div class="panel-body">
                                           <div class="cp-thumb"><img src="images/car-sm-01.jpg" alt=""></div>
                                           <div class="cp-text">
                                               <p>Speeding and minor offences are fine and will not incur any additional fee's. Any other offences should be checked with our reservations....</p>
                                           </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="cp-tab-Two">
                                          <div class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#cp-tab-collapse2" aria-expanded="false" aria-controls="cp-tab-collapse2">
                                              Can I drive the vehicle out of State? 
                                            </a>
                                          </div>
                                        </div>
                                        <div id="cp-tab-collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="cp-tab-Two">
                                           <div class="panel-body">
                                           <div class="cp-thumb"><img src="images/car-sm-01.jpg" alt=""></div>
                                           <div class="cp-text">
                                               <p>Speeding and minor offences are fine and will not incur any additional fee's. Any other offences should be checked with our reservations....</p>
                                           </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="cp-tab-Three">
                                          <div class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#cp-tab-collapse3" aria-expanded="false" aria-controls="cp-tab-collapse3">
                                             Are there any hidden charges? 
                                            </a>
                                          </div>
                                        </div>
                                        <div id="cp-tab-collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="cp-tab-Three">
                                           <div class="panel-body">
                                           <div class="cp-thumb"><img src="images/car-sm-01.jpg" alt=""></div>
                                           <div class="cp-text">
                                               <p>Speeding and minor offences are fine and will not incur any additional fee's. Any other offences should be checked with our reservations....</p>
                                           </div>
                                          </div>
                                        </div>
                                      </div>
                                       <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="cp-tab-Four">
                                          <div class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#cp-tab-collapse4" aria-expanded="false" aria-controls="cp-tab-collapse4">
                                              One Way Rental and how much they cost? 
                                            </a>
                                          </div>
                                        </div>
                                        <div id="cp-tab-collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="cp-tab-Four">
                                          <div class="panel-body">
                                           <div class="cp-thumb"><img src="images/car-sm-01.jpg" alt=""></div>
                                           <div class="cp-text">
                                               <p>Speeding and minor offences are fine and will not incur any additional fee's. Any other offences should be checked with our reservations....</p>
                                           </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <a href="#" class="cp-read-more">More FAQs</a>
                                </div><!--Accordian Item End-->
                            </div>
                        </div>
                    </div>
                 </section><!--News & Faq Section End-->

                 <!--Advertising Section Start-->
                 <section class="cp-advertising-section pd-tb80">
                     <div class="container">
                        <div class="cp-heading-style2">
                            <h2>TaxiTrafic <span>Advertising</span></h2>
                        </div>
                         <div class="row">
                             <div class="col-md-4 col-sm-12">
                                 <!--Advertising Box Start-->
                                 <div class="cp-advertising-box">
                                     <figure class="thumb">
                                         <span class="num">1</span>
                                     </figure>
                                     <div class="cp-text">
                                         <h4>Appeler notre service</h4>
                                         <p>Appler notre service pour commander une course</p>
                                     </div>
                                 </div><!--Advertising Box End-->
                             </div>
                             <div class="col-md-4 col-sm-12">
                                 <!--Advertising Box Start-->
                                 <div class="cp-advertising-box">
                                     <figure class="thumb">
                                         <span class="num">2</span>
                                     </figure>
                                     <div class="cp-text">
                                         <h4>Preciser les Details de la Course</h4>
                                         <p>Preciser les détails de course à notre service clientèle</p>
                                     </div>
                                 </div><!--Advertising Box End-->
                             </div>
                             <div class="col-md-4 col-sm-12">
                                 <!--Advertising Box Start-->
                                 <div class="cp-advertising-box">
                                     <figure class="thumb">
                                         <span class="num">3</span>
                                     </figure>
                                     <div class="cp-text">
                                         <h4>Profiter de votre course au moment opportun</h4>
                                         <p></p>
                                     </div>
                                 </div><!--Advertising Box End-->
                             </div>
                             <div class="col-md-12 cp-btn-holder">
                                 <a href="ZoneClient.aspx" class="cp-btn-style1">ZONE-CLIENT</a>
                             </div>
                         </div>
                     </div>
                 </section><!--Advertising Section End-->
                
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="TOP_FOOTER">
    <strong class="logo">
        <a href="Default.aspx"><img src="images/cp-logo2.png" alt=""></a>
    </strong>

    <p style="width:92%;font-size:85%">
        La Ste O&M TaxiTrafic offre le service TAXI 2.0 de Booking de Taxis  ! <br />
        Pour tous vos voyages, Appelez, choisissez , réservez et payez votre taxi après le service.<br />
        <b>Le TAXI 2.0,  L’innovation c’est nous !!</b>
    </p>
    <ul class="cp-social-links">
        <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
        <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
        <li><a href="#"><i class="fa fa-rss"></i></a></li>
        <li><a href="#"><i class="fa  fa-envelope"></i></a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptInstruct" runat="server">
    <script type="text/javascript">
        $(document).ready(
            function () { 
                            var x = $("#why1").height();
                            if (x < $("#why2").height()) { x = $("#why2").height(); }
                            if (x < $("#why3").height()) { x = $("#why3").height(); }
                            $("#why1").css("height", x);
                            $("#why2").css("height", x);
                            $("#why3").css("height", x);
                            $("#whyIMG").css("height", "296px");
                            $("#whyIMG").css("width", "380px");
                            $(".cp-taxi-holder").css("height","80%")
            }
        );
    </script>
</asp:Content>

