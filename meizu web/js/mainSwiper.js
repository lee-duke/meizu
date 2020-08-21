var main_swiper = new Swiper('#main-swiper', {
    loop: true,
    autoplay: {
        disableOnInteraction: false,
    },
    pagination: {
        el: '#main-pagination',
        type: 'bullets',
        clickable: true,
    },
});
main_swiper.on('slideChangeTransitionEnd', function () {
    // 获取当前下标
    // console.log(main_swiper.activeIndex)
});