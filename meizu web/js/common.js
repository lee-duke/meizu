$(function() {
    // 购物车相关
    var user = localStorage.getItem('users');
    if (user) {
        $('.user-list').css('background', 'url(./images/user-ico.png) no-repeat center center/cover');
        $('.user-item').html(`
              <li>
                  <a href="./login.html">个人中心</a>
              </li>
              <li>
                  <a href="./register.html">我的订单</a>
              </li>
              <li>
                  <a href="./login.html">M码通道</a>
              </li>
              <li>
                  <a href="./mcode.html">退出登录</a>
              </li>`);
        $.ajax({
            url: 'http://172.16.5.150/users/cart',
            type: 'post',
            data: {
                name: user
            },
            success(data) {
                if (data.products.length === 0) {
                    $('.user-car-status').addClass('login-after');
                    $('.user-car-text').html(`
              您的购物车还没有商品,
              <br>
              赶紧去选购吧~
          `);
                } else {
                    console.log(data)
                    var products = data.products;
                    var productsCount = 0
                    var cartsHtml = `<p class="user-cart-title">最近加入的商品</p>`
                    for (let i = 0; i < products.length; i++) {
                        cartsHtml += `
              <div class="user-cart-item">
                <a href="javascript:;" class="clearfix">
                  <div class="user-cart-item-left">
                    <img src="${eval("(" + products[i].imgurl + ")")[0]}">
                  </div>
                  <div class="user-cart-item-right">
                    <p>${eval("(" + products[i].capatity + ")")[0]}</p>
                    <p class="desc">${products[i].versions}${eval("(" + products[i].color + ")")[0]}</p>
                  </div>
                </a>
                <div class="user-cart-item-bottom">
                  <p class="price">￥${eval("(" + products[i].price + ")")[0]} * ${data.productNum[0].quantity}</p>
                </div>
              </div>
            `
                        productsCount += data.productNum[0].quantity
                    }
                    cartsHtml += `
            <div class="user-cart-info-bottom clearfix">
              <div class="user-cart-info-left">
                <span class="user-cart-total">
                  共
                  <span class="user-cart-count">${productsCount}</span>
                  件商品
                  <span>( 0件失效 )</span>
                </span>
              </div>
              <div class="user-car-info-right"></div>
            </div>
          `
                    $('.user-car-info-box').html(cartsHtml)
                }
            }
        })

    }
    $.ajax({
        url: 'http://172.16.5.150/index',
        type: 'get',
        success(data) {
            // 导航模块
            // 手机
            var navHandsetHtml = '';
            for (let i = 1; i < 9; i++) {
                navHandsetHtml += `
        <li>
          <a href="javascript:;">
            <img src=${eval("(" + data.handset[i].imgurl + ")")[0]} alt="">`
                if (i === 1 || i === 2) {
                    navHandsetHtml += `<p>【热卖】${data.handset[i].model}</p>`
                } else {
                    navHandsetHtml += `<p>${data.handset[i].model}</p>`
                }
                navHandsetHtml += `
            <em>￥${eval("(" + data.handset[i].price + ")")[0]}</em>
            <div class="list-cover"></div>
          </a>
        </li>
      `
            }
            $('.nav-handset').html(navHandsetHtml)
            insertNavData('music', data, '.nav-music', 8)
            insertNavData('parts', data, '.nav-parts', 8)
            insertNavData('life', data, '.nav-life', 8)

            function insertNavData(type, data, element, num) {
                var html = '';
                for (let i = 0; i < num + 1; i++) {
                    html += `
        <li>
          <a href="javascript:;">
            <img src=${eval("(" + data[type][i].imgurl + ")")[0]} alt="">
            <p>${data[type][i].description}</p>
            <em>￥${data[type][i].price}</em>
            <div class="list-cover"></div>
          </a>
        </li>
      `
                    $(element).html(html)
                }
            }
        }
    })
})