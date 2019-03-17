{% extends './../admin_layout.tpl' %}

{% block content %}
<div class="content-title">跟踪线索</div>
<div class="content-control">
  <a href="/admin/clue">返回线索列表 >></a>
</div>
<div class="content-mainer">
  {% if userInfo.role == 1 %}
  <div class="form-section">
    <div class="form-item">
      <span class="form-text">客户名称：{{clue.name}}</span>
    </div>
    <div class="form-item">
      <span class="form-text">联系电话：{{clue.phone}}</span>
    </div>
    <div class="form-item">
      <span class="form-text">线索来源：{{clue.utm}}</span>
    </div>
    <div class="form-item">
      <span class="form-text">创建时间：{{clue.created_time_display}}</span>
    </div>
    <div class="form-item">
      <span class="form-text">用户状态：</span>
      <div class="form-item">
        <select id="clueStatus" class="form-input">
          <option value="0">请选择线索状态</option>
          <option value="1" {% if clue.status == 1 %} selected {% endif %}>没有意向</option>
          <option value="2" {% if clue.status == 2 %} selected {% endif %}>意向一般</option>
          <option value="3" {% if clue.status == 3 %} selected {% endif %}>意向强烈</option>
          <option value="4" {% if clue.status == 4 %} selected {% endif %}>完成销售</option>
          <option value="5" {% if clue.status == 5 %} selected {% endif %}>取消销售</option>
        </select>
      </div>
    </div>
    <div class="form-item">
      <span class="form-text">当前分配销售：</span>
      <div class="form-item">
        <select id="clueUserId" class="form-input">
          <option value="0">请选择分配销售</option>
          {% for val in users  %}
          <option value="{{val.id}}" {% if clue.user_id == val.id %} selected {% endif %}>{{val.name}}</option>
          {% endfor %}
        </select>
      </div>
    </div>
    <div class="form-item">
      <p class="form-text">备注：</p>
      <textarea id="clueRemark" class="form-textarea" placeholder="备注信息">{{clue.remark}}</textarea>
    </div>
    <div class="form-item">
      <input id="clueId"  type="text" hidden value="{{clue.id}}" />
      <button id="clueSubmit" class="form-button">保存</button>
    </div>
  </div>
  {% endif %}
  <div class="log-section">
    <ul class="log-list">
      {% for val in logs  %}
      <li class="log-item">
        <p class="log-data">{{val.created_time_display}}</p>
        <p class="log-content">{{val.content}}</p>
      </li>
      {% else %}
        <li class="log-item">
          <p class="log-content">当前没有记录</p>
        </li>
      {% endfor %}
    </ul>
    <div class="form-section">
      <div class="form-item">
        <p class="form-text">添加记录：</p>
        <textarea id="logContent" class="form-textarea" placeholder="请输入本次跟踪的记录 ～"></textarea>
      </div>
      <div class="form-item">
        <button id="logSubmit" class="form-button">添加</button>
      </div>
    </div>
  </div>
</div>
{% endblock %}

{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/clue_log.js"></script>
{% endblock %}