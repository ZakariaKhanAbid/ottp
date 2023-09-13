const db = require("../config/db.config");

exports.get = (data, callback) => {
    var sqlString = `
                    SELECT  cont.id
                            ,cont.title
                            ,cont.description
                            ,cont.thumbnailpath
                    FROM    contents AS cont
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

exports.getByTitle = (data, callback) => {
    var sqlString = `
                    SELECT  cont.id
                            ,cont.title
                            ,cont.description
                            ,cont.thumbnailpath
                    FROM    contents AS cont
                    WHERE   title LIKE ?;
                    `;
    var options = { sql: sqlString, nestTables: false };
    db.query(
        options,
        [data.title],
        (error, results, fields) => {
            if (error) {
                return callback(error);
            }
            
            return callback(null, results);
        }
    );
};