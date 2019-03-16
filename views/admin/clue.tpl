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
    </trs>
    <tr>
      <td>周杰伦</td>
      <td>13511111111</td>
      <td>baidu_search</td>
      <td>2019-4-1</td>
      <td>陈奕迅</td>
      <td>意向强烈</td>
      <td><a href="/admin/clue/1">跟踪</a></td>
    </tr>
    <tr>
      <td>李易峰</td>
      <td>13522222222</td>
      <td>baidu_search</td>
      <td>2019-4-1</td>
      <td>陈奕迅</td>
      <td>意向强烈</td>
      <td><a href="/admin/clue/1">跟踪</a></td>
    </tr>
    <tr>
      <td>陈奕迅</td>
      <td>13533333333</td>
      <td>baidu_search</td>
      <td>2019-4-1</td>
      <td>陈奕迅</td>
      <td>意向强烈</td>
      <td><a href="/admin/clue/1">跟踪</a></td>
    </tr>
  </table>
</div>
{% endblock %}