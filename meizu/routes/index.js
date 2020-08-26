var express = require('express');
var { db } = require('../db/db');
const bodyParser = require('body-parser');
var router = express.Router();

// 配置跨区请求
router.all('*', function(req, res ,next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', '*');
  next();
});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

// 论坛
router.get('/forum', function(req, res, next) {
  var essaySql = `select * from essay`;
  db.query(essaySql, function(err, data) {
    if(err) {
      console.log(err)
    }else {
      var essay = data;
      var invitationsSql = `select * from invitations`;
      db.query(invitationsSql, function(err, data) {
        if(err) {
          console.log(err)
        }else {
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
router.get('/products', function(req, res, next) {
  console.log(req.query)
  var sql = `select * from products where type='${req.query.type}'`;
  db.query(sql, (err, data) => {
    if(err) {
      console.log(err);
    }else {
      var reqdata = data;
      var sql1= `select * from products where type='commend'`;
      db.query(sql1, (err, data) => {
        if(err) {
          console.log(err);
        }else {
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
router.get('/product/:id', function(req, res, next) {
  // console.log(req.params.id)
  var sql = `select * from products where id=${req.params.id}`;
  db.query(sql, function(err, data) {
    if(err) {
      console.log(err)
    }else {
      // console.log(data);
      res.send(data)
    }
  });
})

// 综合论坛
router.get('/discuss', function(req, res, next) {
  var sql = `select * from discuss`;
  db.query(sql, function(err, data) {
    if(err) {
      console.log(err)
    }else {
      // console.log(data);
      res.send(data)
    }
  });
});

module.exports = router;
