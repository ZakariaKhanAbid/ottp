const controller = require("../controllers/Videos.controller");

var express = require("express");

var router = express.Router();

router.get("/get/id/:id", controller.get);

module.exports = router;