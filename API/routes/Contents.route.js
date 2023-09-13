const controller = require("../controllers/Contents.controller");

var express = require("express");

var router = express.Router();

router.get("/get", controller.get);
router.get("/get/title/:title", controller.getByTitle);

module.exports = router;