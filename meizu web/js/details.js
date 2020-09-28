$(function() {
    $.ajax({
        url: "http://172.16.5.150/product/2",
        type: "get",
        success(data) {
            // console.log(data);
            // 渲染结构
            var html = `
            <div class="comname-topnav">
                <div class="comname-container">
                      <span>${data[0].model}</span>
                      <ul class="comname-list">
                          <li>
                              <a href="javascript:;">概述</a>
                          </li>
                          <li>
                              <a href="javascript:;">参数</a>
                        </li>
                    </ul>
                </div>
              </div>
              <div class="comcontent">
                <div class="comleft-img"></div>
              <div class="comright-select"></div>
          `;
            $(".commodity-wrap").html(html);
            // 渲染右侧商品详情
            var html = "";
            html += `
          <div class="comm-tit">
                    <h2>${data[0].model}</h2>
                      <p>${data[0].description}</p>
                  </div>
                  <div class="comm-sale">
                    <div class="comm-saleprice">
                        <small>￥</small>
                        <span>${eval("(" + data[0].price + ")")[1]}</span>
                      </div>
                      <div class="comm-salecoupon">
                        <span class="cou-tit">加价购</span>
                        <div class="c-coupon">
                            <span>另加29元起，即可换购超值商品</span>
                          </div>
                          <a href="javascript:;">立即加购</a>
                      </div>
                  </div>
                  <div class="comm-serv">
                      <div class="comm-service">
                        <span>支 &nbsp;&nbsp;&nbsp;&nbsp; 持</span>
                        <ul class="c-sdetail">
                            <li>
                                  <i class="iconfont icon-success"></i>
                                <span>花呗分期</span>
                            </li>
                            <li>
                                  <i class="iconfont icon-success"></i>
 
                               <span>顺丰发货</span>
                            </li>
                            <li>
                                <i class="iconfont icon-success"></i>
                                <span>7天无理由退货（具体查看详情）</span>
                              </li>
                          </ul>
                      </div>
                    <div class="d-delivery">
                        <span>配送服务</span>
                        <div class="del-address">
                              <span>河南省郑州市</span>
                              <i class="iconfont icon-xialajiantou"></i>
                          </div>
                      </div>
                    <div class="d-sold">
                        <span>本商品由 魅族 负责发货并提供售后服务</span>
                        <a href="javascript:;">
                              <i class="iconfont icon-kujialeqiyezhan_zaixiankefu-"></i>
                              <span>商城客服</span>
                          </a>
                      </div>
                </div>
                <div class="pro-sibling">
                    <dl class="pro-sibitem">
                          <dt>
                          型 &nbsp;&nbsp;&nbsp;&nbsp; 号  
                      </dt>
                          <dd>
                              <a href="javascript:;" class="ddactive">
                              ${data[0].model}
                        </a>
                        </dd>
                    </dl>
                  </div>
                <div class="pro-set">
                    <dl>
                        <dt>网络类型</dt>
                          <dd>
                              <a href="javascript:;" class="ddactive">
                                  <span>${data[0].versions}</span>
                            </a>
                        </dd>
                    </dl>
                      <dl>
                          <dt>颜色分类</dt>
                          <dd class="color-diff">
                          `;
            const tabImg = eval("(" + data[0].tabImg + ")");
            const color = eval("(" + data[0].color + ")");
            for (let i = 0; i < tabImg.length; i++) {
                html += `
                        <a href="javascript:;">
                          <span>${color[i]}</span>
                    </a>
                      `;
            }
            html += `</dd>
                      </dl>
                    <dl>
                        <dt>内存容量</dt>
                        <dd class="inside-storage">`;
            const capatity = eval("(" + data[0].capatity + ")");
            for (let i = 0; i < capatity.length; i++) {
                html += `<a href="javascript:;">
                      <span>${capatity[i]}</span>
                  </a>
                `;
            }
            html += `</dd>
                      </dl>
                      <dl class="procom-hei">
                        <dt>选择套餐</dt>
                        <dd class="procom-posi">
                            <div>
                                  <a href="javascript:;" class="ddactive clicknone">
                                      <span>官方标配</span>
                                  </a>
                                  <a href="javascript:;" class="clicktog">
                                      <span>无线充套餐</span>
                                    <span class="pro-save">省<em>40</em>元</span>
                                </a>
                                <a href="javascript:;" class="clicknone">
                                      <span>碎屏保套餐</span>
                                  </a>
                                  <a href="javascript:;" class="clicktog">
                                      <span>充电组合</span>
                                      <span class="pro-save">省<em>100</em>元</span>
                                </a>
                            </div>
                            <div class="pro-combo">
                                  <div class="combo1 comb-disp1">
                                      <span class="s-triangle s-triangle1"></span>
                                    <div class="com-model">
                                        <ul>
                                            <li>
                                                  <img src="./images/combo1.jpg" alt="">
                                                  <p class="com-t">魅族无线超充板</p>
                                                  <p class="com-pri">
                                                      ¥ 129.00
                                                  </p>
                                            </li>
                                        </ul>
                                    </div>
                                  </div>
                                  <div class="combo1 comb-disp2">
                                    <span class="s-triangle s-triangle2"></span>
                                    <div class="com-model">
                                        <ul>
                                              <li>
                                                  <img src="./images/combo2.jpg" alt="">
                                                <p class="com-t">
                                                    魅族双USB-C快充线
                                                </p>
                                                  <p class="com-pri">¥ 29.00</p>
                                              </li>
                                              <li>
                                                  <img src="./images/combo1.jpg" alt="">
                                                  <p class="com-t">魅族无线超充板</p>
                                                <p class="com-pri">
                                                    ¥ 129.00
                                                </p>
                                              </li>
                                            <li>
                                                <img src="./images/combo3.jpg" alt="">
                                                <p class="com-t">
                                                      魅族超充 GaN 三口充电器
                                                  </p>
                                                <p class="com-pri">¥ 159.00</p>
                                            </li>
                                        </ul>
                                      </div>
                                  </div>
                              </div>
                          </dd>
                    </dl>
                </div>
                <div class="huabei">
                      <div class="hua-tit">
                          <span>
                          花呗分期
                      </span>
                          <a href="javascript:;">
                              <i class="iconfont icon-49"></i>
                          </a>
                      </div>
                      <div class="huabei-list">
                          <a href="javascript:;" class="ddactive">
                              <span class="pro-top">¥1710.45×3期</span>
                            <span class="pro-below">含手续费 ￥38.45/期</span>
                        </a>
                        <a href="javascript:;">
                              <span class="pro-top">¥873.62×6期</span>
                              <span class="pro-below">含手续费 ￥37.62/期</span>
                        </a>
                        <a href="javascript:;">
                            <span class="pro-top">¥449.35×12期</span>
                              <span class="pro-below">含手续费 ￥31.35/期</span>
                          </a>
                    </div>
                </div>
                <div class="num-buy">
                      <dl class="pro-choosenum">
                          <dt>数 &nbsp;&nbsp;&nbsp;&nbsp; 量</dt>
                          <dd>
                              <div class="pro-numby">
                                <button class="num-reduce">-</button>
                                <input type="text" value="1" id="pronum">
                                <button class="num-add">+</button>
                              </div>
                          </dd>
                      </dl>
                      <div class="buy-action">
                          <a href="javascript:;">
                          立即购买
                      </a>
                          <a href="javascript:;">
                        加入购物车
                    </a>
                    </div>
                  </div>
              </div>
          </div>`;
            $(".comright-select").html(html);
            // 渲染左侧图片
            var html = `
                      <div class="preview-img">
                        <img src="./images/comm-detail1.jpg" alt="">
                    <img src="./images/comm-detail2.jpg" alt="">
                    <img src="./images/comm-detail3.jpg" alt="">
                      <img src="./images/comm-detail4.jpg" alt="">
                      </div>
                      <ul class="preview-littleimg">
                        <li class="current">
                        <img src="./images/comm-little-detail1.jpg" alt="">
                    </li>
                      <li>
                          <img src="./images/comm-little-detail2.jpg" alt="">
                      </li>
                      <li>
                          <img src="./images/comm-little-detail3.jpg" alt="">
                      </li>
                    <li>
                        <img src="./images/comm-little-detail4.jpg" alt="">
                    </li>
                      </ul>
                    <div class="preview-action">
                        <a href="javascript:;">
                            <i class="iconfont icon-icon p-collect"></i>
                              <p>收藏</p>
                        </a>
                        <a href="javascript:;">
                            <i class="iconfont icon-qiehuan p-collect"></i>
                              <p>对比</p>
                          </a>
                      </div>`;
            $(".preview-littleimg li").eq(0).addClass("current");
            $(".comleft-img").html(html);
            $("body").on("click", ".color-diff a", function() {
                var $text = $(this).children().eq(0).text();
                $.ajax({
                    url: "http://172.16.5.150/details",
                    type: "get",
                    data: {
                        model: data[0].model,
                        color: $text || eval("(" + data[0].color + ")")[0],
                    },
                    success(data) {
                        // console.log(data);
                        const bigImg = eval("(" + data.big_img + ")");
                        const smallImg = eval("(" + data.small_img + ")");
                        var html = "";
                        for (let i = 0; i < bigImg.length; i++) {
                            html += `<img src=${bigImg[i]} alt="">`;
                        }
                        $(".preview-img").html(html);
                        var html = "";
                        for (let i = 0; i < smallImg.length; i++) {
                            html += `
                          <li>
                              <img src=${smallImg[i]} alt="">
                          </li>`;
                        }
                        $(".preview-littleimg").html(html);
                    },
                });
                $(this).addClass("ddactive").siblings().removeClass("ddactive");
            });

            $(".color-diff a").eq(0).addClass("ddactive");
            $(".inside-storage a").eq(0).addClass("ddactive");
            $(".pro-combo").css("display", "none");
        },
    });
    //鼠标滚动时顶部导航消失，详情导航固定
    $(window).on("scroll", function() {
        console.log($(this).scrollTop());
        if ($(this).scrollTop() > 81) {
            $(".comname-topnav").css("position", "fixed");
        } else {
            $(".comname-topnav").css("position", "absolute");
        }
    });
    //左边商品图片切换

    $("body").on("click", ".preview-littleimg li", function() {
        $(`.preview-img img:nth-child(${$(this).index() + 1})`)
            .css("display", "block")
            .siblings()
            .css("display", "none");
        $(this).addClass("current").siblings().removeClass("current");
    });
    //右边商品选择选中样式
    $("body").on("click", ".inside-storage a", function() {
        $(this).addClass("ddactive").siblings().removeClass("ddactive");
    });
    $("body").on("click", ".procom-posi a", function() {
        $(this).addClass("ddactive").siblings().removeClass("ddactive");
    });
    $("body").on("click", ".huabei-list a", function() {
        $(this).addClass("ddactive").siblings().removeClass("ddactive");
    });
    //点击选择套餐
    $("body").on("click", ".clicktog", function() {
        console.log($(this).index());
        $(".pro-combo").css("display", "block");
        $(".combo1")
            .eq($(this).index() === 1 ? 0 : 1)
            .css("display", "block")
            .siblings()
            .css("display", "none");
    });
    $("body").on("click", ".clicknone", function() {
        $(".pro-combo").css("display", "none");
    });
    //点击减少数量
    $("body").on("click", ".num-reduce", function() {
        var $value = parseInt($("#pronum").val());
        if ($value > 1) {
            if ($value === 2) {
                $(this).css("color", "#e0e0e0");
            } else {
                $(this).css("color", "#000");
            }
            $value--;
            $("#pronum").val($value);
            $(".num-add").css("color", "#000");
        }
    });
    //点击增加数量
    $("body").on("click", ".num-add", function() {
        // console.log($(this).index());
        var $value = parseInt($("#pronum").val());
        if ($value < 3) {
            if ($value === 2) {
                $(this).css("color", "#e0e0e0");
            } else {
                $(this).css("color", "#000");
            }
            $value++;
            $("#pronum").val($value);
            $(".num-reduce").css("color", "#000");
        }
    });
});