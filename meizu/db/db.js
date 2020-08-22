var mysql = require('mysql');

var db = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '123456',
    database: 'meizu'
});

db.connect();

module.exports = {
    db
}