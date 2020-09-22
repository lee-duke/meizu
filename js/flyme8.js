$(function() {
    //点击出现视频
    $('.kv-video-play').on('click', function() {
        $('.kv-video').css('display', 'block')
    })
    $('.design-video-play').on('click', function() {
        $('.design-video').css('display', 'block')
    })
    $('.aicy-cover-text i').on('click', function() {
        $('.aciy-video').css('display', 'block')
    })
    $('.close-btn').on('click', function() {
        $('.video').css('display', 'none')
    })


    // 去线留白图片移动

    var flag = true
    $(window).on('scroll', function() {
        var $scrollTop = $(this).scrollTop();
        var $designTop = $('.design-white').offset().top
        var $nightTop = $('.design-night').offset().top
        var $aicyTop = $('.aicy-screen').offset().top
        var $gameTop = $('.game-run').offset().top
        var $performanceTop = $('.performance').offset().top

        // 流畅度函数封装
        function num(dom, max) {
            var min = 0
            var timer1 = setInterval(function() {
                min++
                $(dom).text(min)
                if (min >= max) {
                    clearInterval(timer1)
                }
            }, 16.7)
        }


        flag = true
        if (flag) {
            if (Math.abs($scrollTop - $designTop) < 80) {
                $('.design-white-img div').addClass('cur')
                flag = false
            }
            // 夜间模式图片移动
            if (Math.abs($scrollTop - $nightTop) < 80) {
                flag = true
                $('.design-night-mb').addClass('cur')
                flag = false
            }
            // aciy识屏图片叠加
            if (Math.abs($scrollTop - $aicyTop) < 80) {
                flag = true
                $('.aicy-screen-mb div').addClass('cur')
                flag = false
            }
            // 息屏运行数字渲染
            if (Math.abs($scrollTop - $gameTop) < 80) {
                flag = true
                var num = 0
                var timer = setInterval(function() {
                    num++
                    $('.game-run-data-num span').text(num)
                    if (num >= 40) {
                        clearInterval(timer)
                    }
                }, 16.7)
                flag = false
            }

            // 流畅度数字渲染
            if (Math.abs($scrollTop - $performanceTop) < 80) {
                flag = true
                num('.performance-data-num1 span', 15)
                num('.performance-data-num2 span', 37)
                num('.performance-data-num3 span', 18)
                num('.performance-data-num4 span', 26)
            }
            flag = false
        }
    })



    // 立即重播按钮
    $('.video-btn-short').each((index) => {
        $('.video-btn-short').eq(index).click(function() {
            $('video').trigger('play')
        })
    })

    //  Aicy 纵览 点击按钮切换内容
    $('.operation li').each((index) => {
        $('.operation li').eq(index).click(function() {
            $('.operation li').removeClass('active')
            $(this).addClass('active')
            if (index == 0) {
                $('.aicy-focus-content-top-main').css('top', 0)
                $('.aicy-focus-content').css('transform', 'translate3d(0, 0, 0)')
            }
            if (index == 1) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -242px, 0)')
            }
            if (index == 2) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -477px, 0)')
            }
            if (index == 3) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -1044px, 0)')
            }
            if (index == 4) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -1251px, 0)')
            }
            if (index == 5) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -1381px, 0)')
            }
            if (index == 6) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -1505px, 0)')
            }
            if (index == 7) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -727px, 0)')
            }
            if (index == 8) {
                $('.aicy-focus-content').css('transform', 'translate3d(0, -1772px, 0)')
            }

        })
    })

    // 超级夜景遮罩层变化
    $('.night-view-mb').bind('mousemove', function(e) {

        var $nightOffsetLeft = $('.night-view-mb').offset().left
        var $nightX = e.pageX - $nightOffsetLeft
        var $width = $('.night-view-mb').width() - $nightX
        $('.night-view-mb-inner').css('width', $width)
        if ($width > 955) {
            $('.night-view-mb-inner').css('width', 955)
        }

    });

    // mengine点击播放音乐
    $('.engine-right-music-item div').each(index => {
        $('.engine-right-music-item div').eq(index).click(function() {
            $(this).children().toggleClass('active')
        })
    })

    // 智能分类相册鼠标移动轮播
    $('.night-sort-main-mb-content').bind('mousemove', function(e) {

        var $nightLeft = $('.night-sort-main-mb-content').offset().left
        var $distance = e.pageX - $nightLeft

        if ($distance > 0) {
            $(this).css({
                'background-position-x': -$distance * 5
            })
        }

    });

    // 游戏模式根据鼠标移动改变位置

    $('.game-design').bind('mousemove', function(e) {

        var $center = $('.game-design-bg').offset().left + $('.game-design-bg').width() / 2
        var $verCenter = $('.game-design-bg').offset().top + $('.game-design-bg').height() / 2

        $('.layer').removeClass('right')
        $('.layer').removeClass('left')
        $('.layer').removeClass('down')
        $('.layer').removeClass('up')

        if (e.pageX > $center) {
            $('.layer').addClass('right')
        }
        if (e.pageX < $center) {
            $('.layer').addClass('left')
        }
        if (e.pageY > $verCenter) {
            $('.layer').addClass('down')
        }
        if (e.pageY < $verCenter) {
            $('.layer').addClass('up')
        }

    });
})