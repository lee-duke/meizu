$(function() {
    function diff(name, ele, h2) {
        var scrollH = $(window).scrollTop();
        var offSet = $(name).offset().top;
        var distance = scrollH - offSet;
        if (Math.abs(distance) < 400) {
            $(ele).addClass("active");
            $(h2).addClass("active");
        }
    }
    $(".s-d").addClass("active");
    $(".s-mt").addClass("active");
    $(window).on("scroll", function() {
        diff(".vip-wrap", ".vip-wrap p", ".vip-wrap h2");
        diff(".client-wrap", ".client-wrap p", ".client-wrap h2");
        diff(".shop-wrap", ".shop-wrap p", ".shop-wrap h2");
        diff(".prop-wrap", ".prop-wrap p", ".prop-wrap h2");
        diff(".vid-wrap", ".vid-wrap p", ".vid-wrap h2");
    });
    $(window).on("load", function() {
        $(".s-d").addClass("active");
        $(".s-mt").addClass("active");
    });
});