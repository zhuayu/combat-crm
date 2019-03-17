// 引用基础模型
const Base = require('./base.js');

// 定义用户模型并基础基础模型
class Clue extends Base {
  // 定义参数默认值为 Clues 表
  constructor(props = 'clue') {
    super(props);
  }
}

module.exports = new Clue()