const PAGE = {
  init: function() {
    this.bind();
  },
  bind: function() {
    $('#clueSubmit').bind('click',this.handleEditClueSubmit);
    $('#logSubmit').bind('click',this.handleAddClueLog);
  },
  handleEditClueSubmit: function() {
    let id = $('#clueId').val();
    let status = $('#clueStatus').val();
    let remark = $('#clueRemark').val();
    let user_id = $('#clueUserId').val();
    status = Number(status)
    if(!id  || !status || !remark || !user_id){
      alert('请输入必要参数');
      return
    }

    $.ajax({
        url: '/api/clue/' + id,
        data: { remark, status, user_id },
        type: 'PUT',
        beforeSend: function() {
          $("#clueSubmit").attr("disabled",true);
        },
        success: function(data) {
          if(data.code === 200){
            alert('编辑成功！')
          }else{
            alert(data.message)
          }
        },
        error: function(err) {
          console.log(err)
        },
        complete: function() {
          $("#clueSubmit").attr("disabled",false);
        }
    })
  },
  handleAddClueLog: function() {
    let content = $('#logContent').val();
    let id = $('#clueId').val();
    if(!content){
      alert('请输入必要参数');
      return
    }

    $.ajax({
        url: '/api/clue/' + id +'/log',
        data: { content },
        type: 'POST',
        beforeSend: function() {
          $("#logSubmit").attr("disabled",true);
        },
        success: function(data) {
          if(data.code === 200){
            alert('添加成功！')
            location.reload();
          }else{
            alert(data.message)
          }
        },
        error: function(err) {
          console.log(err)
        },
        complete: function() {
          $("#logSubmit").attr("disabled",false);
        }
    })
  }
}

PAGE.init();