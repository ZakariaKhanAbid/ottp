const dotenv = require("dotenv");
const { createPool } = require("mysql");

dotenv.config();

/** Connection pool creation - START */
const db = createPool(
                        {
                            port: process.env.DB_PORT,
                            host: process.env.DB_HOST,
                            user: process.env.DB_USER,
                            password: process.env.DB_PASSWORD,
                            database: process.env.DB_SCHEMA,
                            multipleStatements: true,
                            // connectionLimit: 10,
                        }
                    );
/** Connection pool creation - END */

module.exports = db;