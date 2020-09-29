$('.head-nav-r,.app-down-wp').mouseenter(function () {
    $('.app-down-wp').css('display', 'block')
})
$('.head-nav-r,.app-down-wp').mouseleave(function () {
    $('.app-down-wp').css('display', 'none')
})

//用户
$('.user-avatar').mouseenter(function () {
    $(this).children().css('display', 'block')
})
$('.user-avatar').mouseleave(function () {
    $('.user-menu').css('display', 'none')
})

//版块
$('.forums,.bbs-all-menu').mouseenter(function () {
    $('.bbs-all-menu').css('display', 'block')
})
$('.forums,.bbs-all-menu').mouseleave(function () {
    $('.bbs-all-menu').css('display', 'none')
})