// Importing Created Modules
const service = require("../services/Contents.service");

exports.get = (req, res, next) => {
    const data = {};

    service.get(data, (error, results) => {
        if (error) {
            console.log(error);
            return res.status(400).send({ success: false, data: "Bad Request. {{--> "+error+" <--}}" });
        } else {
            if (results.length > 0) {
                return res.status(200).send(results);
            } else {
                return res.status(204).send({ success: false, data: "No Data Found." });
            }
        }
    });
};

exports.getByTitle = (req, res, next) => {
    const data = {
        title: '%'+req.params.title+'%'
    };

    service.getByTitle(data, (error, results) => {
        if (error) {
            console.log(error);
            return res.status(400).send({ success: false, data: "Bad Request. {{--> "+error+" <--}}" });
        } else {
            if (results.length > 0) {
                return res.status(200).send(results);
            } else {
                return res.status(204).send({ success: false, data: "No Data Found." });
            }
        }
    });
};