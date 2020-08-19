$('header .changeheader').on('mouseenter', function() {
    $('header').css('background', '#fff');
    $('header a').css('color', '#515151');
});
$('header .changeheader').on('mouseleave', function() {
    $('header').css('background', 'transparent');
    $('header a').css('color', '#fff');
});