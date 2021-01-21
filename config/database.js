const mysql = require('mysql');
require('dotenv').config();
//imports close


const db = mysql.createPool({
    host: process.env.DB_HOST,
    database: process.env.DB_DATABASE,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    port: process.env.DB_PORT
})


module.exports = {cnn_mysql : db}
