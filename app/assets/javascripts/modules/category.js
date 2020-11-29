$(function() {
  function appendOption(category){
    let html = 
      `<option value="${category.id}">${category.name}</option>`;
    return html;
  }

  function appendChildrenBox(insertHTML){
    let childSelectHtml = '';
    childSelectHtml = 
      `<select class='Details__category__children' id='children_category' name='item[category_id]'>
        <option value="">選択して下さい</option>
        ${insertHTML}
      </select>`
    $('.Details__category__children').append(childSelectHtml);
  }

  function appendGrandchildrenBox(insertHTML) {
    let grandchildSelectHtml = '';
    grandchildSelectHtml = 
      `<select class="Details__category__grandchildren" id="grandchildren_category" name="item[category_id]">
          <option value="">選択してください</option>
          ${insertHTML}
      </select>`
    $('.Details__category__grandchildren').append(grandchildSelectHtml);
  }

  
  $(document).on("change","#parent_category", function() {
    let parentId =  $("#parent_category").val();
    if (parentId != "") {
      $.ajax( {
        type: 'GET',
        url: 'category_children',
        data: { parent_id: parentId },
        dataType: 'json'
      })
      .done(function(children) {
        $("#children_category").remove();
        $("#grandchildren_category").remove();
        let insertHTML = '';
        children.forEach(function(child) {
          insertHTML += appendOption(child);
        });
        appendChildrenBox(insertHTML);
        
        
      })

      .fail(function() {
        alert('error：子カテゴリーの取得に失敗');
      })

    }else{
      $("#children_category").remove();
      $("#grandchildren_category").remove();
    }
  });

  $(document).on('change', '#children_box', function() {
    let childId = $('#children_category').val();
    if (childId != "" && childId != 22 && childId != 38 && childId != 49 && childId != 61 && childId != 74 && childId != 84 && childId != 94 && childId != 103 && childId != 111 && childId != 119 && childId != 127 && childId != 136){
      $.ajax({
        url: 'category_grandchildren',
        type: 'GET',
        data: { child_id: childId },
        datatype: 'json'
      })
      .done(function(grandchildren) {
        $("#grandchildren_category").remove();
          let insertHTML = '';
          grandchildren.forEach(function(grandchild) {
            insertHTML += appendOption(grandchild);
          });
          appendGrandchildrenBox(insertHTML);
      })

      .fail(function() {
        alert('error:孫カテゴリーの取得に失敗');
      })
    }

    else{
      $("#grandchildren_category").empty();  
    }
  })
})