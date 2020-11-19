$(function(){
    function appendOption(category){
      let html = 
        `<option value="${category.name}" data-category="${category.id}">${category.name}</option>`;
      return html;
    }
  
    function appendChildrenBox(insertHTML){
      let childSelectHtml = '';
      childSelectHtml = 
        `<select class='Details__category__children' id= 'children_category'>
          <option value="" data-category="">選択して下さい</option>
          ${insertHTML}
        </select>`
      $('.Details__category__children').append(childSelectHtml);
    }
  
    function appendGrandchildrenBox(insertHTML) {
      let grandchildSelectHtml = '';
      grandchildSelectHtml = 
        `<select class="Details__category__grandchildren" id="grandchildren_category" name="item[category_id]">
            <option value="" data-category="" >選択してください</option>
            ${insertHTML}
        </select>`
      $('.Details__category__grandchildren').append(grandchildSelectHtml);
    }
  
    //親カテゴリー選択によるイベント
    $(document).on("change","#parent_category", function() {
      //選択された親カテゴリーの名前取得 → コントローラーに送る
      let parentCategory =  $("#parent_category").val();
      if (parentCategory != "") {
        $.ajax( {
          type: 'GET',
          url: 'category_children',
          data: { parent_name: parentCategory },
          dataType: 'json'
        })
        .done(function(children) {
          $("#children_category").remove();
          $("#grandchildren_category").remove();
          //親カテゴリーが変更されたら、子/孫カテゴリー、サイズを削除し、初期値にする
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
  
    //子カテゴリー選択によるイベント発火
    $(document).on('change', '#children_box', function() {
      //選択された子カテゴリーidを取得
      let childId = $('#children_category option:selected').data('category');
      //子カテゴリーが初期値でない場合
      if (childId != ""){
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