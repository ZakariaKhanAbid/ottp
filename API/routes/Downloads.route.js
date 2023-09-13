const downloadController = require("../controllers/Downloads.controller");
// const auth = require("../middleware/authenticate.middleware");

var express = require("express");

var router = express.Router();

router.get("", downloadController.downloadFile);

module.exports = router;