for (var i = 1; i < 5; i++) {
  $.ajax({
    url: "http://172.16.5.150/gallery",
    type: "get",
    data: {
      page: i
    },
    success(data) {
      var imghtml = "";
      for (var i = 0; i < data.length; i++) {
        imghtml += `
              <li class="image-item">
                      <div class="image-cover"></div>
                      <img src="${data[i].url}" alt="">
                      <div class="image-info">
                          <p class="image-hot">
                              <span>${data[i].info}</span>
                          </p>
                          <div class="image-bottom">
                              <p class="image-title">${data[i].title}</p>
                              <p class="image-author">${data[i].desc}</p>
                          </div>
                      </div>
                  </li>
            `;
      }
      $(".image-list").append(imghtml);
    },
  });
}
var num = 2;
$(window).on('scroll', function () {

  var sctop = document.documentElement.scrollTop || document.body.scrollTop || window.pageYOffset;
  // console.log(sctop) 
  if (Math.abs(sctop - (690 + num * 738)) <= 100) {
    if (num === num) {
      num++;
      $.ajax({
        url: "http://172.16.5.150/gallery",
        type: "get",
        data: {
          page: num + 2
        },
        success(data) {
          var imghtml = "";
          for (var i = 0; i < data.length; i++) {
            imghtml += `
                      <li class="image-item">
                              <div class="image-cover"></div>
                              <img src="${data[i].url}" alt="">
                              <div class="image-info">
                                  <p class="image-hot">
                                      <span>${data[i].info}</span>
                                  </p>
                                  <div class="image-bottom">
                                      <p class="image-title">${data[i].title}</p>
                                      <p class="image-author">${data[i].desc}</p>
                                  </div>
                              </div>
                          </li>
                    `;
          }
          $(".image-list").append(imghtml);
        },
      });
    }

  }
})
$(window).on('scroll', function () {
  var scroll_top = $(document).scrollTop();
  if (scroll_top > 480) {
    $('.gotop').show()
  } else {
    $('.gotop').hide()
  }
})