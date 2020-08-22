var express = require('express');
var router = express.Router();
var { db } = require('../db/db');

// 配置跨区请求
router.all('*', function(req, res ,next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', '*');
  next();
});

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

// 登录
router.post('/login', function(req, res ,next) {
  var sql = `select * from users where account='${req.body.account}'&&password='${req.body.password}'`
  db.query(sql, (err, data) => {
    if(err) {
      console.log(err);
    }else {
      // console.log(data);
      res.send(data);
    }
  });
});

module.exports = router;
