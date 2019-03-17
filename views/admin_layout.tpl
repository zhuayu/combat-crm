<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{seo.title}}</title>
    <link rel="stylesheet" href="/stylesheets/reset.css"/>
    <link rel="stylesheet" href="/stylesheets/admin.css"/>
    {% block css %}
    {% endblock %}
</head>
<body>
  <div class="wrapper">
    <header class="page-header">{{userInfo.phone}}</header>
    <div class="page-body">
      <div class="page-aside">
        <nav class="page-nav">
          <ul>
            <li>
              <a class="page-nav-item" href="/admin/user">人员管理</a>
            </li>
            <li>
              <a class="page-nav-item" href="/admin/clue">线索管理</a>
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