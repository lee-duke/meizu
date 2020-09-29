$('.userhead').mouseenter(function() {
    $('.normalthread').css('background', '#fff')
})
$('.userhead').mouseleave(function() {
    $('.normalthread').css('background', '')
})




// ajax请求
$.ajax({
    url: 'http://172.16.5.150/discuss',
    type: 'get',
    success(data) {
        function Rendering(pageNum) {
            var pageNum = pageNum
            var normalhtml = ''
            for (let i = (pageNum - 1) * 50; i < (pageNum * 50 > len ? len : pageNum * 50); i++) {
                // console.log(i)
                normalhtml += `
                <li class="normalthread clearfix">
                    <div class="userhead">
                        <img src="${data[i].imgurl}" alt="">
                        <div class="space-card-new">
                            <div class="head-avatar">
                                <a href="javascript:;">
                                    <img src="${data[i].imgurl}" alt="">
                                </a>
                            </div>
                            <div class="user-info2">
                                <a href="javascript:;" class="user-name">${data[i].account}</a>
        
                                <div class="sightml">${data[i].content}</div>
                                <div class="user-info2-r">
                                    <div class="r">
                                        <span>帖子</span>
                                        <span class="in ">${data[i].posts}</span>
                                    </div>
                                    <div class="r rmargin">
                                        <span>收听</span>
                                        <span class="in">${data[i].listen}</span>
                                    </div>
                                    <div class="r rmargin">
                                        <span>听众</span>
                                        <span class="in">${data[i].audience}</span>
                                    </div>
                                </div>
                                <a href="javascript:;" id="card-follow">收听TA</a>
                            </div>
                        </div>
                    </div>
                    <div class="itemcont">
                        <a href="javascript:;" title="${data[i].content}">${data[i].content}</a>
        
        
                    </div>
                    <div class="latestreply">
                        <a href="javascript:;">${data[i].account}</a>
                        <br>
                        <span title="2020-08-26">${data[i].time}</span>
                    </div>
                </li>
                `
            }
            $('.forum-22').html(normalhtml)
        }
        console.log(data)
        var normalhtml = ''
        for (let item = 0; item < 50; item++) {
            normalhtml += `
        <li class="normalthread clearfix">
            <div class="userhead">
                <img src="${data[item].imgurl}" alt="">
                <div class="space-card-new">
                    <div class="head-avatar">
                        <a href="javascript:;">
                            <img src="${data[item].imgurl}" alt="">
                        </a>
                    </div>
                    <div class="user-info2">
                        <a href="javascript:;" class="user-name">${data[item].account}</a>

                        <div class="sightml">${data[item].content}</div>
                        <div class="user-info2-r">
                            <div class="r">
                                <span>帖子</span>
                                <span class="in ">${data[item].posts}</span>
                            </div>
                            <div class="r rmargin">
                                <span>收听</span>
                                <span class="in">${data[item].listen}</span>
                            </div>
                            <div class="r rmargin">
                                <span>听众</span>
                                <span class="in">${data[item].audience}</span>
                            </div>
                        </div>
                        <a href="javascript:;" id="card-follow">收听TA</a>
                    </div>
                </div>
            </div>
            <div class="itemcont">
                <a href="javascript:;" title="${data[item].content}">${data[item].content}</a>


            </div>
            <div class="latestreply">
                <a href="javascript:;">${data[item].account}</a>
                <br>
                <span title="2020-08-26">${data[item].time}</span>
            </div>
        </li>
            `

        }
        $('.forum-22').append(normalhtml)

        var len = data.length
        for (var i = 0; i < len / 50; i++) {
            $('.paging').append(`<li class="pagingitem">${i+1}</li>`)
        }
        $('.paging li:first-child').addClass('cutcolor')
        var pagingli = $('.paging li')
        var forumli = $('.forum-22 li')
        for (let i = 0; i < pagingli.length; i++) {
            pagingli.eq(i).click(function() {
                $(this).addClass('cutcolor').siblings().removeClass('cutcolor')
                Rendering(this.innerText)
                current = i
            })
        }
        var current = 0
        $('.next').click(function() {
            if (current < 2) {
                current++;
                pagingli.eq(current).addClass('cutcolor').siblings().removeClass('cutcolor')
                Rendering(pagingli.eq(current).text())
            }

        })
        $('.prev').click(function() {
            if (current > 0) {
                current--;
                pagingli.eq(current).addClass('cutcolor').siblings().removeClass('cutcolor')
                Rendering(pagingli.eq(current).text())
            }

        })

    }
})