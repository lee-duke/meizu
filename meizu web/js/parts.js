let after = $('.after')
let before = $('.before')
let filter1 = $('.filter1')
let filter2 = $('.filter2')
let filter3 = $('.filter3')

let flex = $('.flex-control-nav1')
let slider = $('.recommend-slider-wrap')
let goods = $('.goods-list-wrap')
    // console.log(flex[0])
flex.eq(0).on('click', () => {
    slider.css('transform', 'translate(0px, 0px)')
    flex.eq(0).addClass('flex-control-nav2').parent().siblings().children().removeClass('flex-control-nav2')
})
flex.eq(1).on('click', () => {
    slider.css('transform', 'translate(-930px, 0px)')
    flex.eq(1).addClass('flex-control-nav2').parent().siblings().children().removeClass('flex-control-nav2')
})
flex.eq(2).on('click', () => {
    slider.css('transform', 'translate(-1242px, 0px)')
    flex.eq(2).addClass('flex-control-nav2').parent().siblings().children().removeClass('flex-control-nav2')
})
let slide = $('.item-slide')
let confix = $('.confix')
    // console.log(slide)
    // for (let j = 0; j < slide.length; j++) {
    //     for (let i = 0; i < slide.eq(j).children().length; i++) {
    //         goods.on('click', slide.eq(j).children().eq(i), (e) => {
    //             slide.eq(j).children().eq(i).addClass('active').siblings().removeClass('active')
    //             confix.eq(j).children().eq(i).addClass('itemPic').siblings().removeClass('itemPic')
    //         })
    //     }
    // }
goods.on('click', '.item-slide-dot', function() {
    $(this).parent().siblings().children().eq($(this).index()).addClass('itemPic').siblings().removeClass('itemPic')

    $(this).addClass('active').siblings().removeClass('active')
})


$.ajax({
    url: 'http://172.16.5.150/products',
    type: 'get',
    data: {
        type: 'parts'
    },
    success: (data) => {
        console.log(data)
            // console.log(eval('(' + data.data[1].price + ')'))
        console.log(eval('(' + data.data[1].tabImg + ')'))
        let html = ''
        for (let i = 1; i < data.data.length; i++) {
            html += ` <li class="gl-item">
            <a href="javascript:;" class="gl-item-link">
                <div class="confix">`
            for (let m = 0; m < eval('(' + data.data[i].imgurl + ')').length; m++) {
                html +=
                    `
                         <img src="${eval('(' + data.data[i].imgurl + ')')[m]}" alt="" class="item-pic">
                         `
            }

            html += `</div>
                <ul class="item-slide">`

            for (let n = 0; n < eval('(' + data.data[i].tabImg + ')').length; n++) {
                html += `<li class="item-slide-dot  item-slide-dot-1" title="${eval('(' + data.data[i].color + ')')[n]}">
                        <img src="${eval('(' + data.data[i].tabImg + ')')[n]}" alt="">
                    </li>
                `
            }


            html += `</ul> <h3 class="item-title">${data.data[i].model}</h3>
                <p class="item-desc">${data.data[i].description} </p>
                <p class="item-price">
                    <em>￥</em>
                    <span class="vm-price">${ data.data[i].price}</span>
                </p>
            </a>
        </li>`
            $('.goods-list-wrap').html(html)
        }
        let htm = ''
        htm += `<a href="javascript:;" class="compare">
        <img class="compare__img" src="${eval('('+data.commend[0].imgurl+')')[0]}" alt="">
    </a>`
        $('.list-floorad').html(htm)
        let hm = ``
        for (let i = 1; i < data.commend.length; i++) {
            hm += `<li class="rs-item">
                    <a href="javascript:;" class="store_list_tj_1">
                        <div class="mod-pic">
                            <img src="${eval('('+data.commend[i].imgurl+')')}" alt="">
                        </div>
                        <div class="mod-desc">
                            <h4 class="vm-title">${data.commend[i].model}</h4>
                            <p class="vm-price">
                                <span>￥</span>
                                <span class="vm-price-text">${data.commend[i].price}</span>
                            </p>
                        </div>
                    </a>
                </li>`
            $('.recommend-slider-wrap').html(hm)
        }

    }
});

// let slide = $('.item-slide-dot')
// console.log(slide)