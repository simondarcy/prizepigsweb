/* social.js */

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

/* end social js */