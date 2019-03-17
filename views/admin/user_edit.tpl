{% extends './../admin_layout.tpl' %}

{% block content %}
<div class="content-title">编辑人员</div>
<div class="content-control">
  <a href="/admin/user">返回用户列表 >></a>
</div>
<div class="form-section">
  <div class="form-item">
    <input id="userName" type="text" class="form-input" placeholder="姓名" value="{{user.name}}"/>
  </div>
  <div class="form-item">
    <input id="userPhone" type="text" class="form-input" placeholder="电话" value="{{user.phone}}"/>
  </div>
  <div class="form-item">
    <input id="userPassword" type="text" class="form-input" placeholder="密码" value="{{user.password}}"/>
  </div>
  <div class="form-item">
    <select id="userRole" class="form-input">
      <option value="0">请选择角色</option>
      <option value="1" {% if user.role == 1 %} selected {% endif %}>管理员</option>
      <option value="2" {% if user.role == 2 %} selected {% endif %}>销售</option>
    </select>
  </div>
  <div class="form-item">
    <input id="userId"  type="text" hidden value="{{user.id}}" />
    <button id="userSubmit" class="form-button">保存</button>
  </div>
</div>
{% endblock %}


{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/user_edit.js"></script>
{% endblock %}