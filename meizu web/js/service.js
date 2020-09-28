//轮播图的swiper.js
var mySwiper = new Swiper(".swiper-container", {
    autoplay: {
        delay: 6000,
        stopOnLastSlide: false,
        disableOnInteraction: false,
    },
    loop: true,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
        bulletClass: "my-bullet",
        bulletActiveClass: "my-bullet-active",
    },
});

$(function() {
    //点击播放按钮可以播放视频
    for (let i = 0; i < $(".provideo-icon").length; i++) {
        $(".provideo-icon")
            .eq(i)
            .on("click", function() {
                $(".ser-video").eq(i).css("display", "block");
            });
    }
    //点击关闭按钮可以关闭视频
    for (let i = 0; i < $(".close-vid").length; i++) {
        $(".close-vid")
            .eq(i)
            .on("click", function() {
                $(".ser-video").eq(i).css("display", "none");
            });
    }
});