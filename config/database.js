// sql connection
var mysql = require('mysql');
var config = {
    // host: 'localhost',
    host: '110.238.80.161',
    user: 'root',
    password: 'Harveylinux77+',
    database: 'db_demo'
};

// init database
var pool = mysql.createPool(config);

//Fetch data
function RunQuery(sql, callback) {
    pool.getConnection(function (err, conn) {
        if (err) {
            ShowErrors(err);
        }
        conn.query(sql, function (err, rows, fields) {
            if (err) {
                ShowErrors(err);
            }
            conn.release();
            callback(rows);
        });
    });
}

//Throw errors
function ShowErrors(err) {
    throw err;
}

module.exports = {
    RunQuery: RunQuery
};

