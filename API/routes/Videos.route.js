const controller = require("../controllers/Videos.controller");

var express = require("express");

var router = express.Router();

router.get("/get", controller.get);

module.exports = router;