<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorMaster.master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="TaxiTrafic.AddCourse" %>

<asp:Content runat="server" ContentPlaceHolderID="AddHEAD">
    <link href="css/chosen.css" rel="stylesheet" />
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .controls {
        margin-top: 10px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }

      #origin-input,
      #destination-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 200px;
      }

      #origin-input:focus,
      #destination-input:focus {
        border-color: #4d90fe;
      }

      #mode-selector {
        color: #fff;
        background-color: #4d90fe;
        margin-left: 12px;
        padding: 5px 11px 0px 11px;
      }

      #mode-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }

    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="PAGE_CONTENT_TITLE" runat="server">
    RESERVER COURSE
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="PAGE_CONTENT_CONTEXTE" runat="server">
    <li><a href="Default.aspx">ACCEUIL</a></li>
    <li><a href="HomeAdmin.aspx">HOME-ADMIN</a></li>
    <li>RESERVER-COURSE</li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PAGE_CONTENT" runat="server">
    <br /><br />
    <section style="width:98%" class="">
        <div class="container">
                <div  class="cp-heading-style1">
                <h2>RESERVATION <span>COURSE TAXI</span></h2>
            </div>
            <!--Booking Form Outer Start-->
            <div style="width:98%" class="cp-booking-form-outer cp-booking-form-outer2">
                <div style="width:100%;text-align:center" class="banner-inner-holder">
                    <asp:Label ForeColor="Red" ID="ERRORX" runat="server" Text=""></asp:Label>
                </div>
                <div class="cp-booking-outer">
                    <div class="booking-inner-holder">
                        <label>CLIENT: </label>
                        <div class="booking-date">
                            <div style="width:60%" class="inner">
                                <asp:DropDownList ID="client" runat="server" DataSourceID="ClientEntity" DataTextField="FULL" DataValueField="ID" Width="100%" ></asp:DropDownList>
                                <span style="font-size:xx-small">SELECTIONNER LE CLIENT</span>
                                <asp:EntityDataSource runat="server" ID="ClientEntity" DefaultContainerName="TaxiTraficEntities" ConnectionString="name=TaxiTraficEntities" EnableFlattening="False" EntitySetName="Clients" Select="it.[ID], it.[LAST_NAME]+ ' ' + it.[FIRST_NAME] + ' ('+ it.[PHONE] + ') ' as FULL"></asp:EntityDataSource>
                            </div>
                            <div class="inner">
                            </div>
                            <div class="inner">
                                <a  style="font-size:xx-small" class="cp-btn-style1" href="AddClient.aspx" >AJOUTER CLIENT</a>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="cp-booking-outer">
                    <div class="booking-inner-holder">
                        <label>Adresse Départ & Arrivée (API Google Maps) : </label>

                        <div style="width:100%;">
                                <div style ="padding-bottom:15px;margin-bottom:15px;">
                                    <input name="origin" style="width:45%;height:45px" id="origin-input" class="controls" type="text"
                                    placeholder="Entrez l'adresse de départ (exemple : Rabat ...)">

                                    <input name="destination" style="width:45%;height:45px"  id="destination-input" class="controls" type="text"
                                    placeholder="Entrez l'adresse d'arrivée (exemple : Kénitra ...)">
                                    
                                </div>

                                <div style ="padding-bottom:15px;margin-bottom:15px;" id="mode-selector" class="controls" hidden="hidden">
                                  <input style="width:10%" checked="checked" type="radio" name="type" id="changemode-driving">
                                  <label style="width:10%" for="changemode-driving">Driving</label>
                                </div>


                                <div class="row"></div>

                                <div style="width:100%;height:500px;" id="map"></div>
                                <br />
                            <span>(Crédit : Google Maps, Conditions d'utilisation respecté par O&M TaxiTrafic)</span>

                        </div>

                    </div>
                                  
                </div>



                <div class="cp-booking-outer">
                    <div class="booking-inner-holder">
                        <label>Type Course : </label>
                        <asp:DropDownList ID="type" runat="server" AutoPostBack="false" onChange="javascript:ChangedType(this.value)">
                            <asp:ListItem Value="1">Course Simple</asp:ListItem>
                            <asp:ListItem Value="2">Course P&#233;riodique</asp:ListItem>
                        </asp:DropDownList>

                        
                    </div>
                </div><!--Booking Outer End-->

                <asp:Panel ID="Normal" runat="server">
                    <!--Booking Outer Start-->
                    <div id="normal" class="cp-booking-outer">
                        <div class="booking-inner-holder">
                            <label>Date & Heure Départ : </label>
                            <div class="booking-date">
                                <div class="inner inner2">
                                    <asp:TextBox Height="30px"  TextMode="Date" ID="DateDepart" runat="server" Width="133px"></asp:TextBox>
                                </div>
                                <div class="inner inner2">
                                    <asp:TextBox Height="30px"  TextMode="Time" ID="TimeDepart" runat="server" Width="137px"></asp:TextBox>
                                </div>
                                <div class="inner inner2">
                                    <i class="fa fa-calendar-check-o"></i>
                                </div>
                            </div>
                        </div>
                    </div><!--Booking Outer End-->
                </asp:Panel>

                <asp:Panel ID="Periodic" runat="server">
                    <div id="periodic" class="cp-booking-outer" hidden>
                        <div class="booking-inner-holder">
                            <label>JOUR & Heure Départ : </label>
                            <div class="booking-date">
                                <div class="inner inner2">
                                    <asp:ListBox ID="DAYS" CssClass="chosen-select" runat="server" SelectionMode="Multiple"  Width="300px" Height="30px">
                                        <asp:ListItem Value="0">Lundi</asp:ListItem>
                                        <asp:ListItem Value="1">Mardi</asp:ListItem>
                                        <asp:ListItem Value="2">Mercredi</asp:ListItem>
                                        <asp:ListItem Value="3">Jeudi</asp:ListItem>
                                        <asp:ListItem Value="4">Vendredi</asp:ListItem>
                                        <asp:ListItem Value="5">Samedi</asp:ListItem>
                                    </asp:ListBox>
                                </div>
                                <div class="inner inner2">
                                    <asp:TextBox Height="30px"  TextMode="Time" ID="TimePeriod" runat="server" Width="137px"></asp:TextBox>
                                </div>
                                <div class="inner inner2">
                                    <i class="fa fa-calendar-check-o"></i>
                                </div>
                            </div>
                        </div>
                         <div class="booking-inner-holder">
                            <label>DATE LIMITE (Periodicité) : </label>
                            <div class="booking-date">
                                <div class="inner inner2">
                                    <asp:TextBox Height="30px"  TextMode="Date" ID="limite" runat="server" Width="133px"></asp:TextBox>
                                </div>
                                
                                <div class="inner inner2">
                                    <i class="fa fa-calendar-check-o"></i>
                                </div>
                            </div>
                        </div>
                    </div><!--Booking Outer End-->
                </asp:Panel>
                               
                            
                <br /><br />
                <div style="width:100%" class="banner-inner-holder">
                    <asp:Button BackColor="#D82A2B" ForeColor="White" Font-Size="18px"   class="cp-btn-style2"  ID="AddButton" runat="server" Text="RESERVER LA COURSE" Width="100%" Height="58px" Font-Names="Exo 2, sans-serif" BorderColor="#D82A2B" BorderStyle="None" OnClick="AddButton_Click" />
                </div>
                <br />
                <div style="width:100%;text-align:center" class="banner-inner-holder">
                    <asp:Label ForeColor="Red" ID="Error" runat="server" Text=""></asp:Label>
                </div>



                            
            </div><!--Booking Form Outer End-->
        </div>
    </section><!--Booking Section End-->
    <br /><br />
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="TOP_FOOTER" runat="server">
</asp:Content>


<asp:Content ID="Content6" ContentPlaceHolderID="AddScript" runat="server">
    <script src="js/chosen.jquery.js"></script>
    <script src="js/chosen.proto.js"></script>
</asp:Content>



<asp:Content ID="Content7" ContentPlaceHolderID="ScriptInstruct" runat="server">
     <script type="text/javascript">
         function initMap() {
             var map = new google.maps.Map(document.getElementById('map'), {
                 mapTypeControl: false,
                 center: { lat: 33.746267, lng: -6.525879 },
                 zoom: 8
             });

             new AutocompleteDirectionsHandler(map);
         }

         /**
          * @constructor
         */
         function AutocompleteDirectionsHandler(map) {
             this.map = map;
             this.originPlaceId = null;
             this.destinationPlaceId = null;
             this.travelMode = 'WALKING';
             var originInput = document.getElementById('origin-input');
             var destinationInput = document.getElementById('destination-input');
             var modeSelector = document.getElementById('mode-selector');
             this.directionsService = new google.maps.DirectionsService;
             this.directionsDisplay = new google.maps.DirectionsRenderer;
             this.directionsDisplay.setMap(map);

             var originAutocomplete = new google.maps.places.Autocomplete(
                 originInput, { placeIdOnly: true });
             var destinationAutocomplete = new google.maps.places.Autocomplete(
                 destinationInput, { placeIdOnly: true });

             this.setupClickListener('changemode-walking', 'WALKING');
             this.setupClickListener('changemode-transit', 'TRANSIT');
             this.setupClickListener('changemode-driving', 'DRIVING');

             this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
             this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

             this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
             this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput);
             this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
         }

         // Sets a listener on a radio button to change the filter type on Places
         // Autocomplete.
         AutocompleteDirectionsHandler.prototype.setupClickListener = function (id, mode) {
             var radioButton = document.getElementById(id);
             var me = this;
             radioButton.addEventListener('click', function () {
                 me.travelMode = mode;
                 me.route();
             });
         };

         AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function (autocomplete, mode) {
             var me = this;
             autocomplete.bindTo('bounds', this.map);
             autocomplete.addListener('place_changed', function () {
                 var place = autocomplete.getPlace();
                 if (!place.place_id) {
                     window.alert("Please select an option from the dropdown list.");
                     return;
                 }
                 if (mode === 'ORIG') {
                     me.originPlaceId = place.place_id;
                 } else {
                     me.destinationPlaceId = place.place_id;
                 }
                 me.route();
             });

         };

         AutocompleteDirectionsHandler.prototype.route = function () {
             if (!this.originPlaceId || !this.destinationPlaceId) {
                 return;
             }
             var me = this;

             this.directionsService.route({
                 origin: { 'placeId': this.originPlaceId },
                 destination: { 'placeId': this.destinationPlaceId },
                 travelMode: this.travelMode
             }, function (response, status) {
                 if (status === 'OK') {
                     me.directionsDisplay.setDirections(response);
                 } else {
                     window.alert('Directions request failed due to ' + status);
                 }
             });
         };

        function ChangedType(value)
        {
            if (value == 1)
            {
                $("#normal").removeAttr("hidden");
                $("#periodic").attr("hidden", "true");
            }
            if (value == 2)
            {
                $("#periodic").removeAttr("hidden");
                $("#normal").attr("hidden", "true");
            }
        }

        $(document).ready(
            function ()
            {
                ChangedType($("#<%= type.ClientID %>").val());
                $(".chosen-select").chosen(
                    {
                        no_results_text: "Oops, pas de resultat !",
                        placeholder_text_multiple: "AUCUN",
                        width: "300px"
                    }
                );
            }
        );
        

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCXARnDKiURVjt_ZY5Q22oZg1UAoYfceTg&libraries=places&callback=initMap" async="async" defer="defer"></script>
</asp:Content>
