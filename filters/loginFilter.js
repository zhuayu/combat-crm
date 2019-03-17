// 引用加密解密模块
const authCodeFunc = require('./../utils/authCode.js');
module.exports = function (req, res, next) {

  res.locals.isLogin = false;
  res.locals.userInfo = {};
  
  // 判断是否存在ac cookie
  let auth_Code = req.cookies.ac;
  if(auth_Code){
    // 如果有，对其进行解密
    auth_Code = authCodeFunc(auth_Code,'DECODE');
    authArr = auth_Code.split("\t");
    let phone = authArr[0];
    let password = authArr[1];
    let id = authArr[2];
    let role = authArr[3];
    // 注意：为了防止删改
    // 这里其实应该再调用一次用户模型进行登录校验
    // 然后把状态保存在 session 中来联合判断。
    // 当前为了教学进度，所以直接把用户名和密码和id直接解密返回
    res.locals.isLogin = true;
    res.locals.userInfo = {
      phone,password,id,role
    }
  }

  next();
}