"use strict";
// Global vars
var GOOGLE_MAP_LAT = 40.7564971,
    GOOGLE_MAP_LNG = -73.9743277,
    SCREEN_WIDTH = $(window).width(),
    isloggedin =  ( $('.loggedin').length > 0 );

function isIE() {
  return navigator.userAgent.indexOf("MSIE ") > -1 || navigator.userAgent.indexOf("Trident/") > -1;
}

// Countdown
$(function() {
    $('.countdown').each(function() {
        var count = $(this);
        $(this).countdown({
            zeroCallback: function(options) {
                var newDate = new Date(),
                    newDate = newDate.setHours(newDate.getHours() + 130);

                $(count).attr("data-countdown", newDate);
                $(count).countdown({
                    unixFormat: true
                });
            }
        });
    });
});


// Responsive navigation
$('#flexnav').flexNav();

// Bootstrap tooltips
$('[data-toggle="tooltip"]').tooltip();

// Google map
if ($('#map-canvas').length) {
    var map,
        service;
    jQuery(function($) {
        $(document).ready(function() {
            var split = $('#map-canvas').data("location").replace('(', '').replace(')', '').split(',');
            GOOGLE_MAP_LAT = split[0];
            GOOGLE_MAP_LNG = split[1];
            var latlng = new google.maps.LatLng(GOOGLE_MAP_LAT, GOOGLE_MAP_LNG);
            var myOptions = {
                zoom: 14,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);


            var marker = new google.maps.Marker({
                position: latlng,
                map: map
            });
            marker.setMap(map);


            $('a[href="#google-map-tab"]').on('shown.bs.tab', function(e) {
                google.maps.event.trigger(map, 'resize');
                map.setCenter(latlng);
            });
        });
    });
}

var equalizeHeights = function(){
    //function to equalize the heights of product thumbs
    var maxHeight = 0;
    //make sure all desriptions are same height
    $(".product-thumb .product-desciption").each(function(){
       if ($(this).height() > maxHeight) { maxHeight = $(this).height(); }
    });

    $(".product-thumb .product-desciption").height(maxHeight);

    //headers too
    $(".product-thumb .product-title").each(function(){
       if ($(this).height() > maxHeight) { maxHeight = $(this).height(); }
    });

    $(".product-thumb .product-title").height(maxHeight);

}

var hasUserEntered = function(){

    var compid = $('.content').data('competition');
    
    var request = $.ajax({
      url: "api/has_user_entered.php",
      method: "POST",
      data: { id : compid },
    });
     
    request.done(function( data ) {
        //check true or false
      if(data.result == "false"){
        $('.question').show();
      }
      else{
        $('.already-entered').show();
      }
    });
     
    request.fail(function( jqXHR, textStatus ) {
      console.log( "Request failed: " + textStatus );
    });
}

var enterCompetition = function(option){

    var compid = $('.content').data('competition');
    var data = {'compid':compid, 'answer':option};
    
    var request = $.ajax({
      url: "api/enter_competition.php",
      method: "POST",
      data: JSON.stringify(data),
    });
     
    request.done(function( data ) {
        $('.question').hide();
        $('.thanks-message').show();
    });
     
    request.fail(function( jqXHR, textStatus ) {
      console.log( "Request failed: " + textStatus );
    });
}

// Document ready functions
$(document).ready(function() {

    //if comp page
    if( $('.content').data('page')=='competition'){
        
        initSocialShareIcons();
        
        if(isloggedin){
            hasUserEntered();
            $('.question .btn').on('click', function(){
                $('.question .btn').attr('disabled', true);//disable buttons
                enterCompetition( $(this).data('option') );
            });
        }
    }

    //highlight menu
    if( $(".content").length >0 ){
        var category = $(".content").data("category");
        var page = $(".content").data("page");

        $('#nav-'+category).addClass('active');
        $('#menu-'+page).addClass('active');
    }

    if( $(".product-thumb").length > 0 && SCREEN_WIDTH > 1000){
        equalizeHeights();
    }
    // Owl Carousel
    var owlCarousel = $('#owl-carousel'),
        owlItems = owlCarousel.attr('data-items'),
        owlCarouselSlider = $('#owl-carousel-slider'),
        owlNav = owlCarouselSlider.attr('data-nav');
    // owlSliderPagination = owlCarouselSlider.attr('data-pagination');

    owlCarousel.owlCarousel({
        items: owlItems,
        navigation: true,
        navigationText: ['', '']
    });

    owlCarouselSlider.owlCarousel({
        slideSpeed: 300,
        paginationSpeed: 400,
        // pagination: owlSliderPagination,
        singleItem: true,
        navigation: true,
        navigationText: ['', ''],
        transitionStyle: 'goDown',
        // autoPlay: 4500
    });

    //ie specific functionality
    if( isIE() ){
        //Update date inputs to text
        $('input[type="date"]').attr('type', 'text');
    }

});

