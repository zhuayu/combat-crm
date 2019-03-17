var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var authController = require('./../controllers/auth.js');
var authMiddleware = require('./../middlewares/auth.js');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

router.get('/admin/login', authController.renderLogin);

router.get('/admin/user', authMiddleware.mustLogin, userController.show);
router.get('/admin/user/create', authMiddleware.mustLogin, userController.renderUserCreate);
router.get('/admin/user/:id/edit', authMiddleware.mustLogin, userController.edit);

router.get('/admin/clue', function(req, res, next) {
  res.render('admin/clue');
});

router.get('/admin/clue/:id', function(req, res, next) {
  res.render('admin/clue_log');
});

module.exports = router;
