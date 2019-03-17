var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user');
var authController = require('./../controllers/auth.js');

router.post('/user' , userController.insert);
router.put('/user/:id' , userController.update);
router.post('/login' , authController.login);

module.exports = router;