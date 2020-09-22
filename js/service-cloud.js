$(function() {
    var $nav = $('.floor-nav ul li');
    var $span = $('.floor-nav ul li a span');
    var $box = $('.floor');



    $(window).on('scroll', function() {
        var $scrollTop = $(this).scrollTop();
        // 设置经过相应版块是导航按钮激活项

        for (var i = 0; i < $box.length; i++) {
            var $offsetTop = $box.eq(i).offset().top;

            if (Math.abs($scrollTop - $offsetTop) <= 50) {
                for (var j = 0; j < $nav.length; j++) {
                    $span.eq(j).removeClass('active');
                }
                $span.eq(i).addClass('active');
            }
        }
    })

    // 回到顶部操作
    $('.change-arrow').on('click', function() {
        var $offsetTop = $(this).offset().top
        var timer = setInterval(function() {
            $offsetTop -= 30;
            if ($offsetTop <= 0) {
                clearInterval(timer)
            }
            $(window).scrollTop($offsetTop);
        })
    })

    // 箭头点击进入下一模块
    $('.next-arrow').on('click', function() {
        var $offsetTop = $(this).offset().top
        var timers = setInterval(function() {
            $offsetTop += 1;
            if ($offsetTop >= 80) {
                clearInterval(timers)
            }
            $(window).scrollTop($offsetTop);
        })
    })

    // 导航按钮点击事件

    for (var i = 0; i < $nav.length; i++) {
        $nav.eq(i).attr('ind', i);
        var $scrollTop = $(this).scrollTop();
        $nav.eq(i).click(function() {
            var $offsetTop = $box.eq($(this).attr('ind')).offset().top;
            var timer;

            if ($scrollTop > $offsetTop) {
                timer = setInterval(function() {
                    $scrollTop -= 50;
                    // 再次判断，如果滚动值小于顶部偏移值，即到了想跳转元素
                    if ($scrollTop <= $offsetTop) {
                        clearInterval(timer);
                        $scrollTop = $offsetTop + 50;
                    }
                    //滚动值重置
                    $(window).scrollTop($scrollTop);
                }, 16.7)
            } else if ($scrollTop <= $offsetTop) {
                // 如果滚动值小于顶部偏移值，即点击的内容在当前元素的下面
                timer = setInterval(function() {
                    $scrollTop += 50;
                    // 再次判断，如果滚动值大于顶部偏移值，即到了想跳转元素
                    if ($scrollTop >= $offsetTop) {
                        clearInterval(timer);
                        $scrollTop = $offsetTop + 50;
                    }
                    //滚动值重置
                    $(window).scrollTop($scrollTop);
                }, 16.7)
            }

        })

    }

})