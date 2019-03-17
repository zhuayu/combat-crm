var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user');


router.post('/user' , userController.insert);
router.put('/user/:id' , userController.update);


module.exports = router;