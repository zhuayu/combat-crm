const User = require('./../models/user.js');
const authCodeFunc = require('./../utils/authCode.js');

const authController = {
  login:async function(req,res,next){
    // 获取邮件密码参数
    let phone = req.body.phone;
    let password = req.body.password;
    // 参数判断
    if(!phone || !password){
      res.json({ code: 0, data: 'params empty!' });
      return
    }

    try{
      // 通过用户模型搜索用户
      const users = await User.select({ phone, password });
      // 看是否有用户存在
      const user = users[0];
      // 如果存在
      if(user){
        // 将其邮箱、密码、id 组合加密
        let auth_Code = phone +'\t'+ password +'\t'+ user.id +'\t'+ user.role;
        auth_Code = authCodeFunc(auth_Code,'ENCODE');
        // 加密防止再 cookie 中，并不让浏览器修改
        res.cookie('ac', auth_Code, { maxAge: 24* 60 * 60 * 1000, httpOnly: true });
        // 返回登录的信息
        res.json({ code: 200, message: '登录成功！'})
      }else{
        res.json({ code: 0, message: '登录失败，没有此用户！' })
      }
    }catch(e){
      res.json({ code: 0, message: '系统问题请管理员处理' })
    }
  },
  // 渲染登录页面的模版
  renderLogin:async function(req,res,next){
    // 如果用户已经登录，重定向到用户管理页面
    if(res.locals.isLogin){
      res.redirect('/admin/clue')
      return
    }
    res.render('admin/login')
  }
}

module.exports = authController;