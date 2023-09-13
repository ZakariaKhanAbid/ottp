const db = require("../config/db.config");

exports.get = (data, callback) => {
    var sqlString = `
                    SELECT  CASE WHEN ISNULL(vid.videopath) THEN 'NoPath' ELSE vid.videopath END AS videopath
                    FROM    contents AS cont
                            LEFT JOIN videodetails AS vid
                            ON cont.id = vid.contentid
                    WHERE   cont.id = ?;
                    `;
    var options = { sql: sqlString, nestTables: false };
    db.query(
        options,
        [data.id],
        (error, results, fields) => {
            if (error) {
                return callback(error);
            }
            
            return callback(null, results);
        }
    );
};