{% extends './../admin_layout.tpl' %}

{% block content %}
<div class="content-title">新增人员</div>
<div class="content-control">
  <a href="/admin/user">返回用户列表 >></a>
</div>
<div class="form-section">
  <div class="form-item">
    <input type="text" class="form-input" placeholder="姓名"/>
  </div>
  <div class="form-item">
    <input type="text" class="form-input" placeholder="电话"/>
  </div>
  <div class="form-item">
    <input type="text" class="form-input" placeholder="密码"/>
  </div>
  <div class="form-item">
    <select class="form-input">
      <option value="0">请选择角色</option>
      <option value="1">管理员</option>
      <option value="2">销售</option>
    </select>
  </div>
  <div class="form-item">
    <button class="form-button">新增</button>
  </div>
</div>
{% endblock %}