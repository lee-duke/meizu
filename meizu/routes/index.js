var express = require('express');
var { db } = require('../db/db');
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

module.exports = router;
