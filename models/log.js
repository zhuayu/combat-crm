// 引用基础模型
const Base = require('./base.js');

// 定义用户模型并基础基础模型
class ClueLog extends Base {
  // 定义参数默认值为 clue_log 表
  constructor(props = 'clue_log') {
    super(props);
  }
}

module.exports = new ClueLog()