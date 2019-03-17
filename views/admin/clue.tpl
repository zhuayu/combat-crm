{% extends './../admin_layout.tpl' %}

{% block content %}
<div class="content-title">线索管理</div>
<div class="content-table">
  <table class="table-container">
    <tr>
      <th>姓名</th>
      <th>电话</th>
      <th>来源</th>
      <th>创建时间</th>
      <th>跟踪销售</th>
      <th>状态</th>
      <th>操作</th>
    </tr>
    {% for val in clues  %}
    <tr>
      <td>{{ val.name }}</td>
      <td>{{ val.phone }}</td>
      <td>{{ val.utm }}</td>
      <td>{{ val.created_time_display }}</td>
      <td>{{ val.sales_name }}</td>
      {% if val.status == 1 %}
        <td>没有意向</td>
      {% elif val.status == 2 %}
        <td>意向一般</td>
      {% elif val.status == 3 %}
        <td>意向强烈</td>
      {% elif val.status == 4 %}
        <td>完成销售</td>
      {% elif val.status == 5 %}
        <td>取消销售</td>
      {% else %}
        <td>-</td>
      {% endif %}
      <td><a href="/admin/clue/{{val.id}}">跟踪</a></td>
    </tr>
    {% endfor %}
  </table>
</div>
{% endblock %}