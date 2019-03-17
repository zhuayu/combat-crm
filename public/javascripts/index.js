const PAGE = {
  init: function() {
    this.bind();
  },
  bind: function() {
    $('#userSubmit').bind('click',this.handleSubmit);
  },
  handleSubmit: function() {
    let name = $('#userName').val();
    let phone = $('#userPhone').val();
    let utm = PAGE.getQuery('utm');
    if(!name || !phone){
      alert('请输入必要参数');
      return
    }

    $.ajax({
        url: '/api/clue',
        data: { name, phone, utm },
        type: 'POST',
        beforeSend: function() {
          $("#userSubmit").attr("disabled",true);
        },
        success: function(data) {
          if(data.code === 200){
            alert('申请成功！')
          }else{
            alert(data.message)
          }
        },
        error: function(err) {
          console.log(err)
        },
        complete: function() {
          $("#userSubmit").attr("disabled",false);
        }
    })
  },
  getQuery:function(name) {
    var result = location.search.match(new RegExp("[\?\&]" + name+ "=([^\&]+)","i"));
    if(result == null || result.length < 1){
        return "";
    }
    return result[1];
  },
}

PAGE.init();