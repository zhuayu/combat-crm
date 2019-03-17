{% extends './../admin_layout.tpl' %}

{% block content %}
<div class="content-title">新增人员</div>
<div class="content-control">
  <a href="/admin/user">返回用户列表 >></a>
</div>
<div class="form-section">
  <div class="form-item">
    <input id="userName" type="text" class="form-input" placeholder="姓名"/>
  </div>
  <div class="form-item">
    <input id="userPhone" type="text" class="form-input" placeholder="电话"/>
  </div>
  <div class="form-item">
    <input id="userPassword" type="text" class="form-input" placeholder="密码"/>
  </div>
  <div class="form-item">
    <select class="form-input" id="userRole">
      <option value="0">请选择角色</option>
      <option value="1">管理员</option>
      <option value="2">销售</option>
    </select>
  </div>
  <div class="form-item">
    <button id="userSubmit" class="form-button">新增</button>
  </div>
</div>
{% endblock %}


{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/user_create.js"></script>
{% endblock %}