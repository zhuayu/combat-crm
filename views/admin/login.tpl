{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/admin_login.css"/>
{% endblock %}


{% block content %}
<div class="wrapper">
  <div class="form-section">
    <div class="form-title">管理系统后台登录</div>
    <div class="form-item">
      <input type="text" class="form-input" placeholder="你的姓名"/>
    </div>
    <div class="form-item">
      <input type="text" class="form-input" placeholder="你的电话"/>
    </div>
    <div class="form-item">
      <button class="form-button">马上抢占名额</button>
    </div>
  </div>
</div>
{% endblock %}