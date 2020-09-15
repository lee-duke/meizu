$(function() {
  // 购物车相关
  var user = localStorage.getItem('users');
  if(user){
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
        </li>`
    );
    $('.user-car-status').addClass('login-after');
    $('.user-car-text').html(`
        您的购物车还没有商品,
        <br>
        赶紧去选购吧~
    `);
  }

  // 内容相关
  $.ajax({
    url: 'http://172.16.5.150/index',
    type: 'get',
    success(data) {
      console.log(data)
      // // 导航模块
      // // 手机
      var navHandsetHtml = '';
      for(let i = 1; i < 9; i++) {
        navHandsetHtml += `
          <li>
            <a href="javascript:;" data-id="${data.handset[i].id}">
              <img src=${eval("(" + data.handset[i].imgurl + ")")[0]} alt="">`
        if(i === 1 || i === 2){
          navHandsetHtml += `<p>【热卖】${data.handset[i].model}</p>`
        }else {
          navHandsetHtml += `<p>${data.handset[i].model}</p>`
        }
          navHandsetHtml +=`
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
      // 手机内容模块
      var handsetHtml = '';
      for(let i = 1; i < 7; i++) {
        if(i === 1) {
          handsetHtml += `<li class="big">`;
        }else if(i === 2) {
          handsetHtml += `<li class="big big2">`;
        }else if(i === 6) {
          handsetHtml += `<li class="last">`
        } else {
          handsetHtml += `<li>`
        }
       
        handsetHtml += `
          <a href="javascript:;" data-id="${data.handset[i].id}">
              <img src=${eval("(" + data.handset[i].imgurl + ")")[0]} alt="">
        `
        if(i === 1 || i === 2) {
          handsetHtml +=  `<span class="freebie">赠品</span>`
        }
             
        handsetHtml += `
                <p class="goods">
                  <span class="goods-name">${data.handset[i].model}</span>
                  <span class="goods-desc">${data.handset[i].indexdesc}</span>
                  <span class="goods-price">
                      <i>￥</i>
                      ${eval("(" + data.handset[i].price + ")")[0]}
                  </span>
              </p>
          </a>
        </li>
        `
      }
      $('.handset').html(handsetHtml);
      insertContentDate('music', data, '.music .right', 9)
      insertContentDate('parts', data, '.parts .right', 9)
      insertContentDate('life', data, '.life .right', 9)
     
      var hotHtml = ''; // 社区热帖模块
      var videoHtml = ''; // 精彩视频模块
      for(let i = 0; i < 8; i++) {
        if(i === 3 || i === 7) {
          hotHtml += `<li class="last">`
          videoHtml += `<li class="last">`
        }else {
          hotHtml += `<li>`
          videoHtml += `<li>`
        }
        hotHtml += `
            <a href="javascript:;">
              <div class="community-img">
                <img src="${data.hot[i].titleurl}" alt="">
              </div>
              <div class="community-user-info">
                <img src="${data.hot[i].userurl}" alt="">
                <span class="community-user-name">${data.hot[i].username}</span>
              </div>
              <p class="experience">${data.hot[i].title}</p>
              <p class="tip">${data.hot[i].type}</p>
            </a>
          </li>
        `
        videoHtml += `
             <a href="javascript:;">
              <div class="video-img">
                <img src="${data.video[i]['video-url']}" alt="">
                <span class="video-play"></span>
              </div>
              <p>${data.video[i]['video-title']}</p>
            </a>
          </li>
        `
      }
      $('.hot ul').html(hotHtml)
      $('.video ul').html(videoHtml)

      var flymeHtml = ''; // flyme模块
      for(let i = 0; i < 7; i++) {
        if(i === 0) {
          flymeHtml += `<li class="first">`
        }else if(i == 2 || i === 6) {
          flymeHtml += `<li class="last">`
        }else {
          flymeHtml += `<li>`
        }
        flymeHtml += `
            <a href="javascript:;">
              <div class="flyme-img">
                <img src="${data.flyme[i]['index-img-url']}" alt="">
              </div>
              <p>${data.flyme[i]['index-title']}</p>
            </a>
          </li>
        `
        $('.flyme ul').html(flymeHtml)
      }
    }
  });

  function insertNavData(type, data, element, num) {
    var html = '';
    for(let i = 0; i < num + 1; i++) {
      html += `
        <li>
          <a href="javascript:;" data-id="${data[type][i].id}">
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

  function insertContentDate(type, data, element, num) {
    var html = '';
    for(let i = 0; i < num; i++) {
      if( i == 2 || i == 5 || i === 8) {
        html += `<li class="last">`
      }else {
        html += `<li>`
      }
      html += `
          <a href="javascript:;" data-id="${data[type][i].id}">
            <img src=${eval("(" + data[type][i].imgurl + ")")[0]} alt="">
            <p class="goods">
              <span class="goods-name">${data[type][i].model}</span>
              <span class="goods-desc">${data[type][i].indexdesc}</span>
              <span class="goods-price">
                <i>￥</i>
                ${data[type][i].price}
              </span>
            </p>
          </a>
        </li>
      `
      $(element).html(html)
    }
  }

  // 点击跳转页面
  $('body').on('click', '.topnav-cover a', function () {
    // console.log($(this).attr('data-id'))
    // 存储商品对应id
    localStorage.setItem('product', $(this).attr('data-id'))
    // window.location.href = './test.html'
  });

  $('body').on('click', '.wrap-content a', function () {
    // console.log($(this).attr('data-id'))
    // 存储商品对应id
    localStorage.setItem('product', $(this).attr('data-id'))
  })
})
