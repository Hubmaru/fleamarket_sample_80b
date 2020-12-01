require 'rails_helper'

describe Card, type: :model do
  describe '#create' do
    it "is valid with a user_id, a customer_id, a card_id" do
      user = create(:user)
      card = build(:card)
      expect(card).to be_valid
    end

    it "is invalid without a user_id" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid without a customer_id" do
      card = build(:card, customer_id: "")
      card.valid?
      expect(card.errors[:customer_id]).to include("can't be blank")
    end

    it "is invalid without a card_id" do
      card = build(:card, card_id: "")
      card.valid?
      expect(card.errors[:card_id]).to include("can't be blank")
    end
  end
end