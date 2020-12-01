class BuyersController < ApplicationController
  require 'payjp'
  before_action :set_card, :set_item

  def purchase
    if @item.buyer.present? 
      redirect_back(fallback_location: root_path) 
    elsif @card.blank?
      redirect_to card_index_path
      flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(@card.customer_id) 
      #カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  # def pay
  #   @item = Item.find(params[:item_id])
  #   # 以下の処理は、ビジネスロジックとして、モデルに書き写すことを検討する。
  #   # すでに購入されていないか？
  #   if @item.buyer.present? 
  #     redirect_back(fallback_location: root_path) 
  #   elsif @card.blank?
  #     # カード情報がなければ、買えないから戻す
  #     redirect_to action: "new"
  #     # フラッシュメッセージを導入する
  #     flash[:alert] = '購入にはクレジットカード登録が必要です'
  #   else
  #     # 購入者なし、クレジットカードもあるし、決済処理に移行
  #     Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
  #     # 請求を発行
  #     Payjp::Charge.create(
  #     amount: @item.price,
  #     customer: @card.customer_id,
  #     currency: 'jpy',
  #     )
  #     # 売り切れなので、productの情報をアップデートして売り切れにします。
  #     if @item.update(buyer_id: current_user.id)
  #       flash[:notice] = '購入しました。'
  #       redirect_to controller: 'items', action: 'show', id: @item.id
  #     else
  #       flash[:alert] = '購入に失敗しました。'
  #       redirect_to controller: 'items', action: 'show', id: @it.id
  #     end
  #   end
  # end

  def pay
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      :amount => @item.price, #支払金額を引っ張ってくる
      :customer => @card.customer_id,  #顧客ID
      :currency => 'jpy',              #日本円
    )
    redirect_to done_item_buyer_path #完了画面に移動
  end

  def done
  end

  private

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end