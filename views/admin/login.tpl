{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/reset.css"/>
<link rel="stylesheet" href="/stylesheets/style.css"/>
{% endblock %}

{% block content %}

<div class="wrapper">
  <div class="page-header">
    <div class="header-logo">
      <img src="/images/mercedes-benz-logo-desktop.png" alt="mercedes-benz-logo"/>
    </div>
  </div>
  <div class="page-body">
    <div class="login-section">
      <div class="login-content">
        <div class="login-title">MERCEDS-BENZ</div>
        <div class="form-section">
          <div class="form-item">
            <input id="userPhone" type="text" class="form-input" placeholder="请输入你的手机"/>
          </div>
          <div class="form-item">
            <input id="userPassword" type="password" class="form-input" placeholder="请输入你的密码"/>
          </div>
          <div class="form-item">
            <button id="userSubmit" class="form-button">马上登录</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="page-footer">Copyright © 2019 极客学院体验技术部出品</footer>
{% endblock %}


{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/login.js"></script>
{% endblock %}