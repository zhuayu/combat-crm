const Clue = require('./../models/clue.js');
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
}

module.exports = userController;