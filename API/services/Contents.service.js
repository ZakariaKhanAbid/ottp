const db = require("../config/db.config");

exports.get = (data, callback) => {
    var sqlString = `
                    SELECT  cont.id
                            ,cont.title
                            ,cont.description
                            ,cont.thumbnailpath
                            ,vid.videopath
                    FROM    contents AS cont
                            LEFT JOIN videodetails AS vid
                            ON cont.id = vid.contentid;
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
                            ,vid.videopath
                    FROM    contents AS cont
                            LEFT JOIN videodetails AS vid
                            ON cont.id = vid.contentid
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