!function(a){a.fn.countdown=function(f){defaults={schedule:null,datetime:null,showYears:!1,showDays:!0,showHours:!0,showMinutes:!0,showSeconds:!0,showOnZeroYears:!1,showOnZeroDays:!0,showOnZeroHours:!0,showOnZeroMinutes:!0,showOnZeroSeconds:!0,unixFormat:!1};var f=a.extend({timerCallback:function(){},initCallback:function(){},zeroCallback:function(){}},defaults,f);return f.datetime=a(this).attr("data-countdown")?a(this).attr("data-countdown"):null,this.each(function(){var g=c(f),h=a(this),i=setInterval(function(){var a=d(g,f);f.timerObject=a;var c=e(a,f);b(h,c,f),a.timeLeft<=0?(clearInterval(i),f.zeroCallback(f)):f.timerCallback(f)},1e3)})};var b=function(b,c){a(b).html(c)},c=function(a){if(null!=a.datetime)return a.datetime;var b=[];for(var c in a.schedule){var d=f(c);for(var e in a.schedule[c]){var g=d+" "+a.schedule[c][e];b.push(g)}}schedule=[];for(var h in b)schedule.push(new Date(b[h]));parsedSchedule=[];for(var h in schedule)parsedSchedule.push(Date.parse(schedule[h])/1e3);var i=new Date,j=Date.parse(i)/1e3;timeDifferences=[];for(var h in parsedSchedule)timeDifferences.push(parsedSchedule[h]-j);timeDifferencesParsed=[];for(h in timeDifferences)timeDifferences[h]>0&&timeDifferencesParsed.push(timeDifferences[h]);var k=Math.min.apply(null,timeDifferencesParsed);for(var l in timeDifferences)if(k==timeDifferences[l])var m=l;var n=b[m];return""!=n?n:null},d=function(a,b){if(null==a)return"";var c=new Date;if(b.unixFormat)var d=a/1e3;else var d=Date.parse(a)/1e3;var c=Date.parse(c)/1e3,e=d-c,f=0,g=0,h=0,i=0,j=0;if(e>0){var f=Math.floor(e/31536e3),g=Math.floor(e/86400),h=Math.floor((e-86400*g)/3600),i=Math.floor((e-86400*g-3600*h)/60),j=Math.floor(e-86400*g-3600*h-60*i);g>365&&(g%=365)}var k={years:f,days:g,hours:h,minutes:i,seconds:j,timeLeft:e};return k},e=function(a,b){a.years<"10"&&(a.years="0"+a.years),a.days<"10"&&(a.days="0"+a.days),a.hours<"10"&&(a.hours="0"+a.hours),a.minutes<"10"&&(a.minutes="0"+a.minutes),a.seconds<"10"&&(a.seconds="0"+a.seconds);var d='<div class="years"><span class="count">'+a.years+'</span><span class="title">Years</span></div>',e='<div class="days"><span class="count">'+a.days+'</span><span class="title">Days</span></div>',f='<div class="hours"><span class="count">'+a.hours+'</span><span class="title">Hours</span></div>',g='<div class="minutes"><span class="count">'+a.minutes+'</span><span class="title">Minutes</span></div>',h='<div class="seconds"><span class="count">'+a.seconds+'</span><span class="title">Seconds</span></div>',i=!1,j=!1,k=!1,l=!1,m=!1;b.showYears&&(i=!0),b.showDays&&(j=!0),b.showHours&&(k=!0),b.showMinutes&&(l=!0),b.showSeconds&&(m=!0),b.showOnZeroYears||"00"!=a.years||(i=!1),b.showOnZeroDays||"00"!=a.days||(j=!1),b.showOnZeroHours||"00"!=a.hours||(k=!1),b.showOnZeroMinutes||"00"!=a.minutes||(l=!1),b.showOnZeroSeconds||"00"!=a.seconds||(m=!1);var n="";return i&&(n+=d),j&&(n+=e),k&&(n+=f),l&&(n+=g),m&&(n+=h),n},f=function(a){var b=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],c=["January","February","March","April","May","June","July","August","September","October","November","December"];for(var d in b)if(a==b[d])var e=d;var f=new Date,g=f.getDay()-e;g=g>0?g=7-g:-g,f.setDate(f.getDate()+g),f.setHours(1);var h=f.getDate();0>h?h="0"+h:null;var i=f.getFullYear(),j=c[f.getMonth()],k=j+" "+h+", "+i;return k}}(jQuery);!function(){$.fn.flexNav=function(a){var b,c,d,e,f,g,h;return h=$.extend({animationSpeed:100,buttonSelector:"#flexnav-menu-button"},a),b=$(this),e=!1,d=!1,b.find("li").each(function(){return $(this).has("ul").length?$(this).addClass("item-with-ul").find("ul").hide():void 0}),b.data("breakpoint")&&(c=b.data("breakpoint")),f=function(){return $(window).width()<=c?(b.removeClass("lg-screen").addClass("sm-screen"),$(".one-page li a").on("click",function(){return b.removeClass("show")}),$(".item-with-ul").off()):(b.removeClass("sm-screen").addClass("lg-screen"),b.removeClass("show"),$(".item-with-ul").on("mouseenter",function(){return $(this).find(">ul").addClass("show").stop(!0,!0).slideDown(h.animationSpeed)}).on("mouseleave",function(){return $(this).find(">ul").removeClass("show").stop(!0,!0).slideUp(h.animationSpeed)}))},$(h.buttonSelector).data("navEl",b),g=".item-with-ul, "+h.buttonSelector,$(g).append('<span class="touch-button"></span>'),g=h.buttonSelector+", "+h.buttonSelector+" .touch-button",$(g).on("touchstart mousedown",function(a){return a.preventDefault(),a.stopPropagation(),console.log(d),$(this).on("touchmove mousemove",function(a){var b;return b=a.pageX,d=!0,$(window).off("touchmove mousemove")})}).on("touchend mouseup",function(a){var b,c,f;if(a.preventDefault(),a.stopPropagation(),f=h.buttonSelector,b=$(this).is(f)?$(this):$(this).parent(f),c=b.data("navEl"),d=!1,d===!1){if(console.log("clicked"),e===!1)return c.addClass("show"),e=!0;if(e===!0)return c.removeClass("show"),e=!1}}),$(".touch-button").on("touchstart mousedown",function(a){return a.stopPropagation(),a.preventDefault(),$(this).on("touchmove mousemove",function(){return d=!0,$(window).off("touchmove mousemove")})}).on("touchend mouseup",function(a){var c;return a.preventDefault(),a.stopPropagation(),c=$(this).parent(".item-with-ul").find(">ul"),b.hasClass("lg-screen")===!0&&($(this).removeClass("active"),$(this).parent(".item-with-ul").siblings().find("ul.show").removeClass("show").hide()),c.hasClass("show")===!0?($(this).removeClass("active"),c.removeClass("show").slideUp(h.animationSpeed)):c.hasClass("show")===!1?($(this).addClass("active"),c.addClass("show").slideDown(h.animationSpeed)):void 0}),b.find(".item-with-ul *").focus(function(){return $(this).parent(".item-with-ul").parent().find(".open").not(this).removeClass("open").hide(),$(this).parent(".item-with-ul").find(">ul").addClass("open").show()}),f(),$(window).on("resize",f)}}.call(this); $(document).ready(function(){
        $('#send-message').click(function(e){
            
            //Stop form submission & check the validation
            e.preventDefault();
            
            // Variable declaration
            var error = false;
            var name = $('#name').val();
            var email = $('#email').val();
            var subject = $('#subject').val();
            var message = $('#message').val();
            var alert = 'form-alert-';
            
         	// Form field validation
            if(name.length == 0){
                var error = true;
                $('#' + alert + 'name').fadeIn(500);
            }else{
                $('#' + alert + 'name').fadeOut(500);
            }
            if(email.length == 0 || email.indexOf('@') == '-1'){
                var error = true;
                $('#' + alert + 'email').fadeIn(500);
            }else{
                $('#' + alert + 'email').fadeOut(500);
            }
            // if(subject.length == 0){
            //     var error = true;
            //     $('#subject_error').fadeIn(500);
            // }else{
            //     $('#subject_error').fadeOut(500);
            // }
            if(message.length == 0){
                var error = true;
                $('#' + alert + 'message').fadeIn(500);
            }else{
                $('#' + alert + 'message').fadeOut(500);
            }
            
            // If there is no validation error, next to process the mail function
            if(error == false){
               // Disable submit button just after the form processed 1st time successfully.
                $('#send-message').attr({'disabled' : 'true', 'value' : 'Sending...' });
                
				/* Post Ajax function of jQuery to get all the data from the submission of the form as soon as the form sends the values to email.php*/
                $.post("includes/mail/index.php", $("#contact-form").serialize(),function(result){
                    //Check the result set from email.php file.
                    if(result == 'sent'){
                        //If the email is sent successfully, remove the submit button
                         $('#send-message').remove();
                        //Display the success message
                        $('#' + alert + 'success').fadeIn(500);
                        //Clear form
                         $("#contact-form").trigger('reset');
                    }else{
                        //Display the error message
                        $('#' + alert + 'fail').fadeIn(500);
                        // Enable the submit button again
                        $('#send-message').removeAttr('disabled').attr('value', 'Send The Message');
                    }
                });
            }
        });    
    });/* social.js */

function getFacebookShareCount(container) {
    var pageUrl  = 'http://www.rte.ie' + window.location.pathname,
        queryUrl = '//graph.facebook.com/?id=' + pageUrl;
    $.ajax({
        url: queryUrl,
        type: 'GET',
        dataType: 'jsonp',
        success: function(data) {
            var numShares = data.shares ? data.shares : 0;
            if (typeof container === 'string') {
                container = $(container);
            }
            $(container).html(numShares);
        }
    });
};

function getTweetCount(container) {
    var pageUrl  = 'http://www.rte.ie' + window.location.pathname,
        queryUrl = '//urls.api.twitter.com/1/urls/count.json?url=' + pageUrl;
    $.ajax({
        url: queryUrl,
        type: 'GET',
        dataType: 'jsonp',
        success: function(data) {
            var numTweets = data.count ? data.count : 0;
            if (typeof container === 'string') {
                container = $(container);
            }
            container.html(numTweets);
        }
    });
};

function initSocialShareIcons(shareText) {
    var tweetShares      = $('.sharer-tw'),
        fbShares         = $('.sharer-fb'),
        googleShares     = $('.sharer-gp'),
        emailShares     = $('.sharer-email');

    var shareText = $('#comp-title').text();

    tweetShares.on('click', function(){
        var shareUrl = '//twitter.com/share?url='+encodeURIComponent(location.href);
        if (shareText) shareUrl += '&text=' + shareText + ' @prizepigs';
        window.open(
            shareUrl,
            'twitter-share-dialog',
            'width=626,height=436');
        return false;
    });
    fbShares.on('click', function(){
        window.open(
            'https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href),
            'facebook-share-dialog',
            'width=626,height=436');
        return false;
    });
    googleShares.on('click', function(){
        window.open(
            '//plus.google.com/share?url='+encodeURIComponent(location.href),
            'google-share-dialog',
            'width=626,height=436');
        return false;
    });
    emailShares.on('click', function(){
        window.location.href='mailto://plus.google.com/share?url='+encodeURIComponent(location.href);
    });
};

/* end social js */"use strict";
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

