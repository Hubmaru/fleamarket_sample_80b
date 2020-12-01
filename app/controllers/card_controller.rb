class CardController < ApplicationController

  require "payjp"
  before_action :set_card

  def index
    if @card.present?
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @card_info = customer.cards.retrieve(customer.default_card)
    end
  end

  def new
    @card = Card.find_by(user_id: current_user.id)
    redirect_to action: "index" if @card.present?
  end

  def create
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    # jsで作成したpayjpTokenがちゃんと入っているか？
    if params['payjpToken'].blank?
      # トークンが空なら戻す
      # binding.pry
      render "new"
    else
      # トークンがちゃんとあれば進めて、PAY.JPに登録されるユーザーを作成します。
      customer = Payjp::Customer.create(
        description: 'test',
        # email: current_user.email,
        card: params['payjpToken'],
        metadata: {user_id: current_user.id}
      )

      # PAY.JPのユーザーが作成できたので、creditcardモデルを登録します。
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "index", notice:"支払い情報の登録が完了しました"
      else
        render 'new'
      end
    end
  end

  def destroy     
    # 今回はクレジットカードを削除するだけでなく、PAY.JPの顧客情報も削除する。
    # PAY.JPの秘密鍵をセットして、PAY.JPから情報をする。
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    # PAY.JPの顧客情報を取得
    customer = Payjp::Customer.retrieve(@card.customer_id)
    customer.delete
    @card.destroy # App上でもクレジットカードを削除
    redirect_to action: "index", notice: "削除しました"
  end

  private
  def set_card
    @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  end
end