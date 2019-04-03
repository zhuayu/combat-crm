{% extends './layout.tpl' %}


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
    <div class="apply-section">
      <div class="container">
        <h2 class="apply-title"><span>预约试驾</span></h2>
        <div class="apply-content">
          <div class="apply-descripton">欢迎在线预约试驾。只需填写姓名及手机号，我们会第一时间与您联系，安排试驾事宜。</div>
          <div class="form-section">
            <div class="form-item">
              <input id="userName" type="text" class="form-input" placeholder="你的姓名"/>
            </div>
            <div class="form-item">
              <input id="userPhone" type="text" class="form-input" placeholder="你的电话"/>
            </div>
            <div class="form-item">
              <button id="userSubmit" class="form-button">马上抢占名额</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="page-footer">Copyright © 2019 极客学院体验技术部出品</footer>
</div>
{% endblock %}


{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/index.js"></script>
{% endblock %}