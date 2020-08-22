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
  var sql = `select * from users where account='${req.body.account}'&&password='${req.body.password}'`;
  db.query(sql, (err, data) => {
    if(err) {
      console.log(err);
    }else {
      // console.log(data);
      res.send(data);
    }
  });
});

// 注册
router.post('/register', function(req, res, next) {
  // console.log(req.body);
  // res.send('通了');
  var selectSql = `select * from users where account='${req.body.account}'`;
  db.query(selectSql, (err, data) => {
    if(err) {
      console.log(err);
    }else{
      if(data.length !== 0){
        // 账号存在
        res.send('账号已存在');
      }else {
        var insertSql = `insert into users (account, password) values ('${req.body.account}', '${req.body.password}')`
        db.query(insertSql, (err, data) => {
          if(err) {
            console.log(err)
          }else {
            // console.log(data);
            res.send('注册成功')
          }
        });
      }
    }
  });
});

module.exports = router;
