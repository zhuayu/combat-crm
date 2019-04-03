const Clue = require('./../models/clue.js');
const ClueLog = require('./../models/log.js');
const User = require('./../models/user.js');
const { formatTime } = require('./../utils/date.js');

const userController = {
  insert: async function(req,res,next){
    let name = req.body.name;
    let phone = req.body.phone;
    let utm = req.body.utm;
    let created_time = new Date();

    if(!name || !phone){
      res.json({ code: 0, message: '缺少必要参数' });
      return
    }

    try{
      const clues = await Clue.insert({  name, phone, utm, created_time });
      res.json({ code: 200, data: clues })
    }catch(e){
      console.log(e)
      res.json({ code: 0, message: '内部错误' })
    }
  },
  show: async function(req,res,next){
    try{
      const role = res.locals.userInfo.role;
      const user_id = res.locals.userInfo.id;
      let params = {};
      if (role == 2) {
        params.user_id = user_id
      }
      const clues = await Clue.joinUser(params);
      res.locals.clues = clues.map((data)=>{
        data.created_time_display = formatTime(data.created_time);
        return data
      });
      res.locals.nav = 'clue';
      res.render('admin/clue.tpl',res.locals)
    }catch(e){
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },
  log: async function(req,res,next) {
    try{
      const id = req.params.id;
      const clues = await Clue.select({ id })
      const logs = await ClueLog.select({ clue_id : id})
      const users = await User.select({ role: 2 })
      res.locals.users = users.map(data => {
        return {
          id: data.id,
          name: data.name
        }
      });
      res.locals.clue = clues[0]
      res.locals.clue.created_time_display = formatTime(res.locals.clue.created_time);
      res.locals.logs = logs.map((data)=>{
        data.created_time_display = formatTime(data.created_time);
        return data
      });
      res.locals.nav = 'clue';
      res.render('admin/clue_log.tpl',res.locals)
    }catch(e){
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },
  update: async function(req,res,next) {
    let status = req.body.status;
    let remark = req.body.remark;
    let id = req.params.id;
    let user_id = req.body.user_id;
    
    if(!status || !remark){
      res.json({ code: 0, message: '缺少必要参数' });
      return
    }

    try{
      const clue = await Clue.update( id ,{  status, remark, user_id });
      res.json({ code: 200,  data: clue })
    }catch(e){
      console.log(e)
      res.json({  code: 0, message: '内部错误'})
    }
  },
  addLog: async function(req,res,next){
    let content = req.body.content;
    let created_time = new Date();
    let clue_id = req.params.id;
    if(!content){
      res.json({ code: 0, message: '缺少必要参数' });
      return
    }

    try{
      const clue = await ClueLog.insert({  content, created_time, clue_id });
      res.json({ code: 200, data: clue })
    }catch(e){
      console.log(e)
      res.json({ code: 0, message: '内部错误'})
    }
  }
}

module.exports = userController;