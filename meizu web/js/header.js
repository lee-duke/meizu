$('header .changeheader').on('mouseenter', function() {
    $('header').css('background', '#fff');
    $('header a').css('color', '#515151');
    // $('header .user-list').css('background', 'url(./images/user-black.png) no-repeat');
    // $('header .user-car').css('background', 'url(./images/buycar-black.png) no-repeat');
});
$('header .changeheader').on('mouseleave', function() {
    $('header').css('background', 'transparent');
    $('header a').css('color', '');
    // $('header .user-list').css('background', '');
    // $('header .user-car').css('background', '');
});