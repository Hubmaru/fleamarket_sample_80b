$(function(){
  function appendOption(size){
    let html = 
      `<option value="${size.id}">${size.name}</option>`;
    return html;
  }

  function appendChildrenBox(insertHTML){
    let childSelectHtml = '';
    childSelectHtml = 
      `<select class='Details__size__children' id='children_size' name='item[size_id]'>
        <option value="">選択して下さい</option>
        ${insertHTML}
      </select>`
    $('.Details__size__children').append(childSelectHtml);
  }

  
  $(document).on("change","#parent_size", function() {
    let parentId =  $("#parent_size").val();
    if (parentId != "") {
      $.ajax( {
        type: 'GET',
        url: '/items/:id/size_children',
        data: { parent_id: parentId },
        dataType: 'json'
      })
      .done(function(children) {
        $("#children_size").remove();
        let insertHTML = '';
        children.forEach(function(child) {
          insertHTML += appendOption(child);
        });
        appendChildrenBox(insertHTML);
      })
      .fail(function() {
        alert('error：子サイズの取得に失敗');
      })

    }else{
      $("#children_size").remove();
    }
  })
})