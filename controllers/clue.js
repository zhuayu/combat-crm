const Clue = require('./../models/clue.js');
const ClueLog = require('./../models/log.js');

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
      const clues = await Clue.insert({ 
        name, phone, utm, created_time
      });
      res.json({ 
        code: 200, 
        data: clues
      })
    }catch(e){
      console.log(e)
      res.json({ 
        code: 0,
        message: '内部错误'
      })
    }
  },
  show: async function(req,res,next){
    try{
      const clues = await Clue.all();
      res.locals.clues = clues.map((data)=>{
        data.created_time_display = formatTime(data.created_time);
        return data
      });
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
      res.locals.clue = clues[0]
      res.locals.clue.created_time_display = formatTime(res.locals.clue.created_time);
      res.locals.logs = logs.map((data)=>{
        data.created_time_display = formatTime(data.created_time);
        return data
      });
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
    
    if(!status || !remark){
      res.json({ code: 0, message: '缺少必要参数' });
      return
    }

    try{
      const clue = await Clue.update( id ,{ 
        status, remark
      });
      res.json({ 
        code: 200, 
        data: clue
      })
    }catch(e){
      console.log(e)
      res.json({ 
        code: 0,
        message: '内部错误'
      })
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
      const clue = await ClueLog.insert({ 
        content, created_time, clue_id
      });
      res.json({ 
        code: 200, 
        data: clue
      })
    }catch(e){
      console.log(e)
      res.json({ 
        code: 0,
        message: '内部错误'
      })
    }
  }
}

module.exports = userController;