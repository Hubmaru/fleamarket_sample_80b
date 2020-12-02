class BuyersController < ApplicationController
  require 'payjp'
  before_action :set_item
  before_action :set_card, only:[:purchase, :pay]

  def purchase
    if @item.buyer.present? 
      redirect_back(fallback_location: root_path) 
    elsif @card.blank?
      redirect_to card_index_path
      flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id) 
      @default_card_information = customer.cards.retrieve(@card.card_id)
      @exp_month = @default_card_information.exp_month.to_s
      @exp_year = @default_card_information.exp_year.to_s.slice(2,3)
      @user = User.find(params[:id])
      @prefecture = @user.delivery_address.prefecture
      @municipality = @user.delivery_address.municipality
      @address = @user.delivery_address.address
      @delivery_family_name = @user.delivery_address.delivery_family_name
      @delivery_last_name = @user.delivery_address.delivery_last_name
    end
  end

  def pay
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      :amount => @item.price,
      :customer => @card.customer_id,
      :currency => 'jpy',
    )
    redirect_to done_item_buyer_path
  end

  def done
    @item.update( buyer_id: current_user.id)
  end

  private

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end