require 'rails_helper'

describe DeliveryAddress, type: :model do
  describe '#create' do
    it "is valid with a delivery_family_name, delivery_last_name, delivery_family_name_kana, delivery_last_name_kana, postal_code, prefecture, municipality, address, user_id" do
      delivery_address = build(:delivery_address)
      expect(delivery_address).to be_valid
    end

    it "is invalid without a delivery_family_name" do
      delivery_address = build(:delivery_address, delivery_family_name: "")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_family_name]).to include("can't be blank")
    end

    it "is invalid without a delivery_last_name" do
      delivery_address = build(:delivery_address, delivery_last_name: "")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_last_name]).to include("can't be blank")
    end

    it "is invalid without a delivery_family_name_kana" do
      delivery_address = build(:delivery_address, delivery_family_name_kana: "")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_family_name_kana]).to include("can't be blank")
    end

    it "is invalid without a delivery_last_name_kana" do
      delivery_address = build(:delivery_address, delivery_last_name_kana: "")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_last_name_kana]).to include("can't be blank")
    end

    it "is invalid without a postal_code" do
      delivery_address = build(:delivery_address, postal_code: "")
      delivery_address.valid?
      expect(delivery_address.errors[:postal_code]).to include("can't be blank")
    end

    it "is invalid without a prefecture" do
      delivery_address = build(:delivery_address, prefecture: "")
      delivery_address.valid?
      expect(delivery_address.errors[:prefecture]).to include("can't be blank")
    end

    it "is invalid without a municipality" do
      delivery_address = build(:delivery_address, municipality: "")
      delivery_address.valid?
      expect(delivery_address.errors[:municipality]).to include("can't be blank")
    end

    it "is invalid without a address" do
      delivery_address = build(:delivery_address, address: "")
      delivery_address.valid?
      expect(delivery_address.errors[:address]).to include("can't be blank")
    end

    it "is invalid without a delivery_family_name hannkaku" do
      delivery_address = build(:delivery_address, delivery_family_name: "ｼｹﾝ")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_family_name]).to include("is invalid")
    end

    it "is invalid without a delivery_last_name hannkaku" do
      delivery_address = build(:delivery_address, delivery_last_name: "ｼｹﾝ")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_last_name]).to include("is invalid")
    end

    it "is invalid without a delivery_family_name_kana hannkaku & kana" do
      delivery_address = build(:delivery_address, delivery_family_name_kana: "ｼｹﾝ")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_family_name_kana]).to include("is invalid")
    end

    it "is invalid without a delivery_last_name_kana hannkaku & kana" do
      delivery_address = build(:delivery_address, delivery_last_name_kana: "ｼｹﾝ")
      delivery_address.valid?
      expect(delivery_address.errors[:delivery_last_name_kana]).to include("is invalid")
    end

  end
end