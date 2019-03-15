var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

router.get('/admin/login', function(req, res, next) {
  res.render('admin/login');
});

router.get('/admin/user', function(req, res, next) {
  res.render('admin/user');
});

router.get('/admin/user/create', function(req, res, next) {
  res.render('admin/user_create');
});

router.get('/admin/user/:id/edit', function(req, res, next) {
  res.render('admin/user_edit');
});

router.get('/admin/clue', function(req, res, next) {
  res.render('admin/clue');
});

router.get('/admin/clue/:id', function(req, res, next) {
  res.render('admin/clue_log');
});

module.exports = router;
