var mySwiper = new Swiper('.swiper-container', {
    autoplay: {
        delay: 5000,
        disableOnInteraction: false
    },
    loop: true,
    pagination: {
        el: '.swiper-pagination',
        clickable: true
    },
})
$('.firmware').mouseenter(function () {
    $(this).addClass("tag-active")
    $('.system').removeClass("tag-active")
    $('.tag-main').css('display', 'block')
    $('.tag-main2').css('display', 'none')
})
$('.system').mouseenter(function () {
    $(this).addClass("tag-active")
    $('.firmware').removeClass("tag-active")
    $('.tag-main').css('display', 'none')
    $('.tag-main2').css('display', 'block')
})
$.ajax({
    url: 'http://172.16.5.150/forum',
    type: 'get',
    data: {

    },
    success: function (data) {
        var trHtml = ''
        for (let i = 0; i < data.invitations.length / 2; i++) {
            // console.log(i)
            trHtml += `<tr>`;
            for (let j = i * 2; j < (i + 1) * 2; j++) {
                // console.log(j)
                trHtml += `
                    <td>
                        <div class="thread-td">
                            <a href="javascript:;" class="thread-avatar">
                                <img src="${data.invitations[j].headPortrait}" alt="">
                            </a>
                            <div class="thread-title clearfix">
                                <a href="javascript:;" class="t-title">${data.invitations[j].headline}</a>
                                <div class="meta-info">
                                    <span class="username">${data.invitations[j].name}</span>
                                    <p class="into-right">
                                        <span>
                                            <i class="index-thread-view"></i>
                                            ${data.invitations[j].pageView}
                                        </span>
                                        <span>
                                            <i class="short index-thread-comment"></i>
                                            ${data.invitations[j].discussion}
                                        </span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </td>
                `;
            }
            trHtml += `</tr>`;
        }
        $('#hotThreadCnt').html(trHtml);
        var recomHtml = ''
        for (x in data.essay) {
            recomHtml += `
                    <li class="rt-list">
                    <div class="rt-img">
                        <a href="javascript:;">
                            <img src="${data.essay[x].coverImg}" alt="">
                        </a>
                    </div>
                    <div class="rt-main clearfix">
                        <div class="rt-wrap  clearfix">${data.essay[x].type}</div>
                        <a href="javascript:;" class="rth" title="${data.essay[x].articlename}">${data.essay[x].articlename}</a>
                        <div class="rt-meta">
                            <span class="readicon-uinfo-5" style="margin-right:4px;float:left;"></span>
                            <span class="spfont">${data.essay[x].views}</span>
                            <span class="readicon-uinfo-5" style="margin:0 4px 0 20px;float:left;"></span>
                            <span class="spfont"${data.essay[x].discuss}</span>
                            <span class="spfont" style="margin:0 0 0 20px;">
                                /
                                <a href="javascript:;">${data.essay[x].writer}</a>
                            </span>
                            <span class="spfont" style="margin:0 0 0 20px;">
                                /
                                <span title="${data.essay[x].deta}">${data.essay[x].deta}</span>
                            </span>
                            <span class="spfont alte" style="float: right;">
                                <a href="javascript:;" class="alink">阅读全文</a>
                            </span>
                        </div>
                        <div class="content">${data.essay[x].leadWord}</div>
                        <a href="javascript:;" class="bds-tsina"></a>
                    </div>
                </li>
            `
           
        }
        
        $('#recomCnt').html(recomHtml)
        $('.content').each(function(){
            if($(this).text()=='null'){
                $(this).css('display','none')
            }
        })
   }

})