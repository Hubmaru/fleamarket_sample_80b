require 'rails_helper'

describe Item do
  describe '#create' do
    let(:user){create(:user)}
    let(:category){create(:category)}


      it "is valid with a name, text, images, price, prefecture_id, condition_id, category_id, cost_id, days_id, seller_id" do
        item = build(:item, :image, seller_id: user.id, category_id: category.id)
        expect(item).to be_valid
      end

      it 'is invalid without a image' do
        item = build(:item, seller_id: user.id, category_id: category.id)
        item.valid?
        expect(item.errors[:images]).to include("is too short (minimum is 1 character)")
      end

      it 'is invalid with a images that more than 10 images' do
        item = build(:item, :images, seller_id: user.id, category_id: category.id)
        item.valid?
        expect(item.errors[:images]).to include("is too long (maximum is 10 characters)")
      end

      it "is invalid without a name" do
        item = build(:item, name: "")
        item.valid?
        expect(item.errors[:name]).to include("can't be blank")
      end

      it "is invalid without a text" do
        item = build(:item, text: "")
        item.valid?
        expect(item.errors[:text]).to include("can't be blank")
      end

      it "is invalid without a price" do
        item = build(:item, price: "")
        item.valid?
        expect(item.errors[:price]).to include("can't be blank")
      end

      it "is invalid withpout a category_id" do
        item = build(:item, category_id: "")
        item.valid?
        expect(item.errors[:category_id]).to include("can't be blank")
      end

      it "is invalid without a condition_id" do
        item = build(:item, condition_id: "")
        item.valid?
        expect(item.errors[:condition_id]).to include("can't be blank")
      end

      it "is invalid without a cost_id" do
        item = build(:item, cost_id: "")
        item.valid?
        expect(item.errors[:cost_id]).to include("can't be blank")
      end

      it "is invalid without a days_id" do
        item = build(:item, days_id: "")
        item.valid?
        expect(item.errors[:days_id]).to include("can't be blank")
      end

      it "is invalid without a seller_id" do
        item = build(:item, seller_id: "")
        item.valid?
        expect(item.errors[:seller_id]).to include("can't be blank")
      end

  end
end