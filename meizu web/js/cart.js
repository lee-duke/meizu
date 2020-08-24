$(function() {
    // 获取用户登录信息
    var user = localStorage.getItem('user');
    console.log(user)
    // 判断用户是否登录
    if(user === null){
        // 没有登录，默认页面
        $('.cart .content').removeClass('login');
    }else {
        // 登录，向数据库请求用户的所有信息
        $.ajax({
            url: '',
            type: 'post',
            data: `name=${user}`,
            success(data) {
                if(data === ''){
                    // 用户的购物车没有信息
                    $('.cart .content').addClass('login');
                }else {
                    // 根据购物车信息渲染页面
                    $('.cart .content').css('display', 'none');
                    $('.cart .cart-container').css('display', 'block');
                }
            }
        });
        
    }
})