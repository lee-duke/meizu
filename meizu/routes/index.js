var express = require('express');
var { db } = require('../db/db');
const bodyParser = require('body-parser');
var router = express.Router();

// 配置跨区请求
router.all('*', function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', '*');
  next();
});

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});

// 首页
router.get('/index', function (req, res, next) {
  // var handset, music, parts, life, hot, flyme, video
  var obj = {
    "handset": [], "music": [], "parts": [], "life": [], "hot": [], "flyme": [], "video": []
  }
  var sql = `select * from products where type='handset'`;
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      obj.handset = data;
      sql = `select * from products where type='music'`;
      db.query(sql, function (err, data) {
        if (err) {
          console.log(err)
        } else {
          obj.music = data;
          sql = `select * from products where type='parts'`;
          db.query(sql, function (err, data) {
            if (err) {
              console.log(err)
            } else {
              obj.parts = data;
              sql = `select * from products where type='life'`;
              db.query(sql, function (err, data) {
                if (err) {
                  console.log(err)
                } else {
                  obj.life = data;
                  sql = `select * from hot`;
                  db.query(sql, function (err, data) {
                    if (err) {
                      console.log(err)
                    } else {
                      obj.hot = data;
                      sql = `select * from flyme`;
                      db.query(sql, function (err, data) {
                        if (err) {
                          console.log(err)
                        } else {
                          obj.flyme = data;
                          sql = `select * from video`;
                          db.query(sql, function (err, data) {
                            if (err) {
                              console.log(err)
                            } else {
                              obj.video = data;
                              res.send(obj);
                            }
                          })
                        }
                      })
                    }
                  })
                }
              })
            }
          })
        }
      })
    }
  })
});

// 论坛
router.get('/forum', function (req, res, next) {
  var essaySql = `select * from essay`;
  db.query(essaySql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      var essay = data;
      var invitationsSql = `select * from invitations`;
      db.query(invitationsSql, function (err, data) {
        if (err) {
          console.log(err)
        } else {
          var invitations = data;
        }
        res.send({
          code: 200,
          essay,
          invitations,
          msg: '请求成功'
        })
      });

    }
  });

});

// 全部商品
router.get('/products', function (req, res, next) {
  console.log(req.query)
  var sql = `select * from products where type='${req.query.type}'`;
  db.query(sql, (err, data) => {
    if (err) {
      console.log(err);
    } else {
      var reqdata = data;
      var sql1 = `select * from products where type='commend'`;
      db.query(sql1, (err, data) => {
        if (err) {
          console.log(err);
        } else {
          res.send({
            code: 200,
            data: reqdata,
            commend: data,
            msg: '请求成功',
          });
        }
      });
    }
  });
});

// 单个商品
router.get('/product/:id', function (req, res, next) {
  // console.log(req.params.id)
  var sql = `select * from products where id=${req.params.id}`;
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      // console.log(data);
      res.send(data)
    }
  });
})
// 商品详情图片
router.get('/details', function (req, res, next) {
  console.log(req.query)
  var sql = `select * from details where model="${req.query.model}" && color="${req.query.color}"`
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      res.send(data[0])
    }
  })
})

// 综合论坛
router.get('/discuss', function (req, res, next) {
  var sql = `select * from discuss`;
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      // console.log(data);
      res.send(data)
    }
  });
});

// 专卖店
router.get('/address', function (req, res, next) {
  var sql = `select * from province`;
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      res.send(data)
    }
  })
});
router.get('/city', function (req, res, next) {
  // console.log(req.query)
  var sql = `select * from city where provinceRid='${req.query.provinceRid}'`;
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      res.send(data)
    }
  })
});
router.get('/store', function (req, res, next) {
  // console.log(req.query.cityRid)
  var sql = `select * from store where cityRid='${req.query.cityRid}'`;
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      res.send(data)
    }
  })
});

// 社区影像馆
router.get('/gallery', function (req, res, next) {
  // console.log(req.query.page)
  var sql = `select * from gallery`;
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      // console.log(data)
      var galleryArr = []
      for (let i = (req.query.page - 1) * 12; i < req.query.page * 12; i++) {
        galleryArr.push(data[i])
      }
      res.send(galleryArr)
    }
  })
})

// flyme系统更新
router.get('/flyme/update', function (req, res, next) {
  var sql = `select * from phone`
  db.query(sql, function (err, data) {
    if (err) {
      console.log(err)
    } else {
      // console.log(data)
      res.send(data)
    }
  })
})

// 插入数据
router.get('/intodata', function (req, res, next) {

  console.log(req.query)
  // console.log(str)
  var sql = `insert into details (small_img, big_img) values (${req.query.small},${req.query.big})`
  db.query(sql, function(err,data) {
    if(err){
      console.log(err)
    }else{
       res.send('OK')
    }
  })


});
module.exports = router;
