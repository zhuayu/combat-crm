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
    </trs>
    <tr>
      <td>周杰伦</td>
      <td>13511111111</td>
      <td>管理员</td>
      <td>2019-4-1</td>
      <td><a href="/admin/user/1/edit">编辑</a></td>
    </tr>
    <tr>
      <td>李易峰</td>
      <td>13522222222</td>
      <td>管理员</td>
      <td>2019-4-1</td>
      <td><a href="/admin/user/2/edit">编辑</a></td>
    </tr>
    <tr>
      <td>陈奕迅</td>
      <td>13533333333</td>
      <td>管理员</td>
      <td>2019-4-1</td>
      <td><a href="/admin/user/3/edit">编辑</a></td>
    </tr>
  </table>
</div>
{% endblock %}