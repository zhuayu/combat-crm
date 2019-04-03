<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{seo.title}}</title>
    <link rel="stylesheet" href="/stylesheets/reset.css"/>
    <link rel="stylesheet" href="/stylesheets/style.css"/>
    {% block css %}
    {% endblock %}
</head>
<body>
  <div class="wrapper">
    <header class="page-header">
      <div class="header-logo">
        <img src="/images/mercedes-benz-logo-desktop.png" alt="mercedes-benz-logo"/>
      </div>
      <div class="user-info">
        <span>{{userInfo.name}}</span>
        <a class="logout" href="/api/logout">退出</a>
      </div>
    </header>
    <div class="page-body">
      <div class="page-aside">
        <nav class="page-nav">
          <ul>
            {% if userInfo.id == 1 %}
            <li>
              <a class="page-nav-item {% if nav == 'user' %}active{% endif %}" href="/admin/user">人员管理</a>
            </li>
            {% endif %}
            <li>
              <a class="page-nav-item {% if nav == 'clue' %}active{% endif %}" href="/admin/clue">线索管理</a>
            </li>
          </ul>
        </nav>
      </div>
      <div class="page-content">
        {% block content %}
        {% endblock %}
      </div>
    </div>
    <footer class="page-footer">Copyright © 2019 极客学院体验技术部出品</footer>
  </div>

    {% block js %}
    {% endblock %}
</body>
</html>