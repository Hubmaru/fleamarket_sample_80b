$(function() {
  Payjp.setPublicKey('pk_test_4ae4a6da796eb254743e6bda');

  $(".form").on('submit', function(e) {

    let form = $(".form");
    // formで入力された、カード情報を取得します。
    let card = {
      number: $("#card_number").val(),
      cvc: $("#cvc").val(),
      exp_month: $("#exp_month").val(),
      exp_year: $("#exp_year").val(),
    };

    // PAYJPに登録するためのトークン作成
    Payjp.createToken(card, function(status, response) {
      if (response.error){
        // エラーがある場合処理しない。
        alert('入力項目が正しくありません。')
        // form.find('.payment-errors').text(response.error.message);
        $("#card_number").val('');
        $("#cvc").val('');
        $("#exp_month").val('');
        $("#exp_year").val('');
        $('.CommitBtn').prop('disabled', false);
      }   
      else {
        // エラーなく進めた場合
        // formで取得したカード情報を削除して、Appにカード情報を残さない。
        $("#card_number").removeAttr("name");
        $("#cvc").removeAttr("name");
        $("#exp_month").removeAttr("name");
        $("#exp_year").removeAttr("name");
        let token = response.id;
        form.append($('<input type="hidden" name="payjpToken" />').val(token));
        form.get(0).submit();
      };
    });
    e.preventDefault();
  });
});