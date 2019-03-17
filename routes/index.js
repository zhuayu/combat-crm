var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

router.get('/admin/login', function(req, res, next) {
  res.render('admin/login');
});


router.get('/admin/user', userController.show);
router.get('/admin/user/create', userController.renderUserCreate);
router.get('/admin/user/:id/edit', userController.edit);

router.get('/admin/clue', function(req, res, next) {
  res.render('admin/clue');
});

router.get('/admin/clue/:id', function(req, res, next) {
  res.render('admin/clue_log');
});

module.exports = router;
