// 引用基础模型
const Base = require('./base.js');
const knex = require('./knex');

// 定义用户模型并基础基础模型
class Clue extends Base {
  // 定义参数默认值为 Clues 表
  constructor(props = 'clue') {
    super(props);
  }

  joinUser(params={}){
    return knex('clue')
      .join('user', 'clue.user_id', '=', 'user.id')
      .select(
        'clue.id',
        'clue.name',
        'clue.phone',
        'clue.utm',
        'clue.status',
        'clue.created_time',
        {'sales_name': 'user.name'},
      ).where(params)
  }
}

module.exports = new Clue()