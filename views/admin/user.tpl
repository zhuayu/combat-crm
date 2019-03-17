{% extends './../admin_layout.tpl' %}

{% block content %}
<div class="content-title">人员管理</div>
<div class="content-control">
  <a href="/admin/user/create">新增人员 >></a>
</div>
<div class="content-table">
  <table class="table-container">
    <tr>
      <th>姓名</th>
      <th>电话</th>
      <th>角色</th>
      <th>创建时间</th>
      <th>操作</th>
    </tr>
    {% for val in users  %}
    <tr>
      <td>{{val.name}}</td>
      <td>{{val.phone}}</td>
      <td>{{ val.role_display}}</td>
      <td>{{ val.created_time_display}}</td>
      <td><a href="/admin/user/{{val.id}}/edit">编辑</a></td>
    </tr>
    {% endfor %}
  </table>
</div>
{% endblock %}