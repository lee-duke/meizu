var express = require('express');
var router = express.Router();
var { db } = require('../db/db');

// 配置跨区请求
router.all('*', function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', '*');
  next();
});

/* GET users listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});

// 登录
router.post('/login', function (req, res, next) {
  var sql = `select * from users where account='${req.body.account}'&&password='${req.body.password}'`;
  db.query(sql, (err, data) => {
    if (err) {
      console.log(err);
    } else {
      if(data.length === 0) {
        res.send('账号密码不存在');
      }else {
        res.send('登录成功');
      }
      
    }
  });
});

// 注册
router.post('/register', function (req, res, next) {
  var selectSql = `select * from users where account='${req.body.account}'`;
  db.query(selectSql, (err, data) => {
    if (err) {
      console.log(err);
    } else {
      if (data.length !== 0) {
        // 账号存在
        res.send('账号已存在');
      } else {
        var insertSql = `insert into users (account, password) values ('${req.body.account}', '${req.body.password}')`
        db.query(insertSql, (err, data) => {
          if (err) {
            console.log(err)
          } else {
            console.log(data)
            // 存入cookie
            // res.cookie('users', data, {
            //   signed: 'meizu'
            // });
            res.send('注册成功');
          }
        });
      }
    }
  });
});

// 查询购物车
router.post('/cart', function (req, res, next) {
  console.log(req.body);
  // 通过用户名查询对应的购物车信息
  var usersSql = `select cart from users where account='${req.body.name}'`;
  db.query(usersSql, (err, data) => {
    if (err) {
      console.log(err)
    } else {
      // console.log(data[0].cart)
      if (data[0].cart) {
        var productArr = eval('(' + data[0].cart + ')');
        var productStr = '';
        for (let i = 0; i < productArr.length; i++) {
          if (i === productArr.length - 1) {
            productStr += `id=${productArr[i].id}`;
          } else {
            productStr += `id=${productArr[i].id}||`;
          }
        }
        var productSql = `select * from products where ${productStr}`
        db.query(productSql, (err, data) => {
          if (err) {
            console.log(err);
          } else {
            // console.log(data)
            res.send({
              code: 200,
              productNum: productArr,
              products: data,
              msg: '请求成功'
            });
          }
        });
      }else {
        res.send('');
      }

    }
  });
});

// 更改购物车信息
router.post('/incart', function (req, res, next) {
  console.log(req.body.products)
  var usersSql = `update users set cart='${req.body.products}' where account='${req.body.name}'`;
  db.query(usersSql, (err, data) => {
    if (err) {
      err
    } else {
      console.log(data)
    }
  });
  res.send('ok')
});


module.exports = router;
