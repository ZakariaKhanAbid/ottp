const db = require("../config/db.config");

exports.get = (data, callback) => {
    var sqlString = `
                    SELECT  * 
                    FROM    videodetails;
                    `;
    var options = { sql: sqlString, nestTables: false };
    db.query(
        options,
        [],
        (error, results, fields) => {
            if (error) {
                return callback(error);
            }
            
            return callback(null, results);
        }
    );
};