let city1 = $(".city");
let city2 = $(".city-list");
let store = $(".store-list");
let store1 = $(".store");

city1.on("click", () => {
    city2.toggle("slow");
    store.hide();
});
store1.on("click", () => {
    store.toggle("slow");
});

$.ajax({
    type: "get",
    url: "http://172.16.5.150/address",
    data: "",
    success: function(dat) {
        // console.log(dat)
        let html = ``;
        for (let i = 0; i < dat.length; i++) {
            html += `
          <li class="city-lista">${dat[i].province}</li>
          `;
            $(".city-list").html(html);
        }
        let city = $(".city-lista");
        // console.log(city)
        for (let i = 0; i < city.length; i++) {
            city.eq(i).on("click", () => {
                $(".city").text(city.eq(i).text());
                city2.hide("slow");
                $.ajax({
                    type: "get",
                    url: "http://172.16.5.150/city",
                    data: {
                        provinceRid: dat[i].rid,
                    },
                    success: function(msg) {
                        let htm = ``;
                        for (let j = 0; j < msg.length; j++) {
                            htm += `
                <li class="city-listb">${msg[j].city}</li>
                `;
                            $(".store-list").html(htm);
                            store1.text(msg[0].city);
                            $.ajax({
                                type: "get",
                                url: "http://172.16.5.150/store",
                                data: {
                                    cityRid: msg[j].rid,
                                },
                                success: function(aum) {
                                    console.log(aum);
                                    let ht = ``;
                                    for (let m = 0; m < aum.length; m++) {
                                        ht += `
                      <div class="exclusive-box">
                            <a href="javascript:;" class="store-title">
                                <p>${aum[m].name}</p>
                            </a>
                            <p class="store-addr">${aum[m].address}</p>
                            <p class="store-address">${aum[m].addRemark}</p>
                            <p class="store-num">${aum[m].tel}</p>
                        </div>
                      `;
                                        $(".exclusive").html(ht);
                                    }
                                },
                            });
                        }
                        let city3 = $(".city-listb");
                        // console.log($('.city-listb'))
                        console.log(city3.length);
                        for (let j = 0; j < city3.length; j++) {
                            console.log(j);
                            city3.eq(j).on("click", () => {
                                $(".store").text(city3.eq(j).text());
                                store.hide("slow");
                                $.ajax({
                                    type: "get",
                                    url: "http://172.16.5.150/store",
                                    data: {
                                        cityRid: msg[j].rid,
                                    },
                                    success: function(aum) {
                                        console.log(aum);
                                        let ht = ``;
                                        for (let m = 0; m < aum.length; m++) {
                                            ht += `
                        <div class="exclusive-box">
                              <a href="javascript:;" class="store-title">
                                  <p>${aum[m].name}</p>
                              </a>
                              <p class="store-addr">${aum[m].address}</p>
                              <p class="store-address">${aum[m].addRemark}</p>
                              <p class="store-num">${aum[m].tel}</p>
                          </div>
                        `;
                                            $(".exclusive").html(ht);
                                        }
                                    },
                                });
                            });
                        }

                        // console.log(msg)
                    },
                });
            });
        }
    },
});