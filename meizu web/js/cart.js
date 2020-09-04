$(function () {
    // 获取用户登录信息
    var users = localStorage.getItem('users');
    // console.log(users);
    // 判断用户是否登录
    if (users === null) {
        // 没有登录，默认页面
        $('.cart .content').removeClass('login');
    }else {
         // 登录，向数据库请求用户的所有信息
        $.ajax({
            url: 'http://172.16.5.150/users/cart',
            type: 'post',
            data: `name=${users}`,
            success(data) {
                console.log(data)
                // console.log(changeArr(data.products[0].price)[0])
                if(data === '') {
                    // 用户的购物车没有信息
                    $('.cart .content').addClass('login');
                }else {
                    // 根据购物车信息渲染页面
                    $('.cart .content').css('display', 'none');
                    $('.cart .cart-container').css('display', 'block');
                    var productHtml = ''
                    for(let i = 0; i < data.productNum.length; i++) {
                        productHtml = `
                        <li class="cart-product-list">
                            <div class="cart-select">
                                <input type="checkbox" class="check">
                                <a href="javascript:;" class="product-link" data-id="${data.productNum[i].id}">
                                    <img src="${changeArr(data.products[i].imgurl)[0]}" alt="">
                                </a>
                                <a href="javascript:;" class="product-info">
                                    <p class="cart-product-item-name">${data.products[i].model}</p>
                                    <p class="cart-product-desc">${data.products[i].versions}</p>
                                </a>
                            </div>
                            <div class="cart-price">
                                <p class="cart-product-price">${changeArr(data.products[0].price)[0]}</p>
                            </div>
                            <div class="cart-number">
                                <button class="cart-subtract-num">-</button>
                                <input type="text" class="cart-num" value="${data.productNum[i].quantity}">
                                <button class="cart-add-num">+</button>
                                <div class="cart-product-number-max">限购3件</div>
                            </div>
                            <div class="cart-total">
                                <span>${priceAddZero(parseInt(changeArr(data.products[0].price)[0]) * data.productNum[i].quantity)}</span>
                            </div>
                            <div class="cart-ctrl">
                                <span class="cart-product-del">--</span>
                            </div>
                        </li>`;
                    }
                    $('.cart-product-item').html(productHtml);
                    // 计数，一共多少件
                    $('#totalCount').text($('.cart-product-list').length);
                    // 限购3件
                    var productNum = $('.cart-num');
                    for (let i = 0; i < productNum.length; i++) {
                        if (productNum.eq(i).val() === '1') {
                            productNum.eq(i).prev().addClass('disable');
                        } else if (productNum.eq(i).val() === '3') {
                            productNum.eq(i).next().addClass('disable');
                        }
                    }
                    calcTotalPrice();
                }
            }
        });
    }
    // 字符串变数组
    function changeArr(str) {
        return eval('(' + str + ')');
    }

    //价格后边补零
    function priceAddZero(price) {
        var strPrice = price.toString();
        if(strPrice.indexOf('.') === -1){
            return strPrice += '.00'
        }
    } 

    // 计算总价
    function calcTotalPrice() {
        // 找到所有的checkbox
        var products = $('.cart-product-item .check');
        var totalPrice = 0;
        for (let i = 0; i < products.length; i++) {
            if (products.eq(i).is(':checked')) {
                // checkbox 被选中，计算价格
                totalPrice += parseFloat(products.eq(i).parent().siblings('.cart-total').children().text());
            }
        }
        $('.cart-footer-total').text(priceAddZero(totalPrice));
    }

    // 增加数量，计算商品价格
    $('.cart-product-item').on('click', '.cart-add-num', function () {
        var num = parseInt($(this).prev().val());
        num >= 3 ? num = 3 : num++;
        $(this).prev().val(num)
        var price = parseInt($(this).prev().val()) * parseInt($(this).parent().prev().children().text());
        $(this).parent().next().children().text(price += '.00');
        // 限购3件
        if (num === 3) {
            $(this).addClass('disable');
            $(this).siblings('.cart-product-number-max').addClass('show');
        } else {
            $(this).removeClass('disable');
            $(this).siblings('.cart-product-number-max').removeClass('show');
            $(this).siblings('.cart-subtract-num').removeClass('disable');
        }
        calcTotalPrice();
        sendProductData();
    });
    
    // 减少数量，计算商品价格
    $('.cart-product-item').on('click', '.cart-subtract-num', function () {
        var num = parseInt($(this).next().val());
        num <= 1 ? num = 1 : num--;
        $(this).next().val(num);
        var price = parseInt($(this).next().val()) * parseInt($(this).parent().prev().children().text())
        $(this).parent().next().children().text(price);
        // 限购3件
        if (num === 1) {
            $(this).addClass('disable');
        } else {
            $(this).removeClass('disable');
        }
        $(this).siblings('.cart-add-num').removeClass('disable');
        calcTotalPrice();
        sendProductData();
    });
    
    // 单选商品
    var productNumber = 0; // 记录选择的商品的个数
    $('.cart-product-item').on('click', '.check', function () {
        // console.log(productNumber)
        if ($(this).prop('checked')) {
            $(this).prop("checked", 'checked');
            productNumber++;
        } else {
            $(this).prop("checked", false);
            productNumber--;
        }
        if (productNumber === $('.cart-product-item .check').length) {
            $('.cart-select-all .ipt').prop("checked", 'checked');
        } else {
            $('.cart-select-all .ipt').prop("checked", false);
        }
        $('#totalSelectedCount').text(productNumber);
        calcTotalPrice();
    });
    
    // 全选商品，主动
    $('.cart').on('click', '.cart-select-all .ipt', function () {
        if ($(this).prop('checked')) {
            $('input:checkbox').prop("checked", 'checked');
            productNumber = $('.cart-product-item .check').length;
        } else {
            $('input:checkbox').prop("checked", false);
            productNumber = 0;
        }
        $('#totalSelectedCount').text(productNumber);
        calcTotalPrice();
    });
    // 全选商品，被动
    function chooseAllProducts() {
        if (productNumber === $('.cart-product-item .check').length) {
            $('.cart-select-all .ipt').prop("checked", 'checked');
            productNumber = $('.cart-product-item .check').length;
        } else {
            $('.cart-select-all .ipt').prop("checked", false);
            productNumber = 0;
        }
        $('#totalSelectedCount').text(productNumber);
    }

    // 删除
    $('.cart-ctrl').on('click', function () {
        if ($(this).text() === '编辑') {
            $(this).text('完成');
            $('.cart-product-del').text('×');
        } else if ($(this).text() === '完成') {
            $(this).text('编辑');
            $('.cart-product-del').text('--');
        }
    });
    $('.cart').on('click', '.cart-product-del', function () {
        if ($(this).text() === '×') {
            $(this).parent().parent().remove();
            productNumber--;
            chooseAllProducts();
            calcTotalPrice();
            sendProductData();
        }
    });

    // 向服务器传递数据
    function sendProductData() {
        var productData = '';
        for(let i = 0; i < $('.product-link').length; i++) {
            if(i === $('.product-link').length - 1) {
                productData += `{id: ${$('.product-link').eq(i).attr('data-id')},quantity: ${$('.cart-num').eq(i).val()}}`
            }else {
                productData += `{id: ${$('.product-link').eq(i).attr('data-id')},quantity: ${$('.cart-num').eq(i).val()}},`
            }
        }
        productData = `[${productData}]`;
        $.ajax({
            url: 'http://172.16.5.150/users/incart',
            type: 'post',
            data: `name=${users}&products=${productData}`,
            success(data) {
                console.log(data)
            }
        });
    }
})