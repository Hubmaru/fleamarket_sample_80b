require 'rails_helper'

describe User, type: :model do
  describe '#create' do
    it "is valid with a nickname, email, password, passeowd_confirmation, real_family_name, real_last_name, real_family_name_kana, real_last_name_kana, birth" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid withpout a password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    it "is invalid without a real_family_name" do
      user = build(:user, real_family_name: "")
      user.valid?
      expect(user.errors[:real_family_name]).to include("can't be blank")
    end

    it "is invalid without a real_last_name" do
      user = build(:user, real_last_name: "")
      user.valid?
      expect(user.errors[:real_last_name]).to include("can't be blank")
    end

    it "is invalid without a real_family_name_kana" do
      user = build(:user, real_family_name_kana: "")
      user.valid?
      expect(user.errors[:real_family_name_kana]).to include("can't be blank")
    end

    it "is invalid without a real_last_name_kana" do
      user = build(:user, real_last_name_kana: "")
      user.valid?
      expect(user.errors[:real_last_name_kana]).to include("can't be blank")
    end

    it "is invalid without a birth" do
      user = build(:user, birth: "")
      user.valid?
      expect(user.errors[:birth]).to include("can't be blank")
    end

    it "is invalid with eamil that has already been" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "is valid with a password that more than 7 characters" do
      user = build(:user, password: "0000007", password_confirmation: "0000007")
      expect(user).to be_valid
    end

    it "is invalid with a password that less than 6 characters" do
      user = build(:user, password: "000006", password_confirmation: "000006")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end

    it "is invalid without a real_family_name hannkaku" do
      user = build(:user, real_family_name: "ｼｹﾝ")
      user.valid?
      expect(user.errors[:real_family_name]).to include("is invalid")
    end

    it "is invalid without a real_last_name hannkaku" do
      user = build(:user, real_last_name: "ﾀﾛｳ")
      user.valid?
      expect(user.errors[:real_last_name]).to include("is invalid")
    end

    it "is invalid without a real_family_name_kana hannkaku & kana" do
      user = build(:user, real_family_name_kana: "ｼｹﾝ")
      user.valid?
      expect(user.errors[:real_family_name_kana]).to include("is invalid")
    end

    it "is invalid without a real_last_name_kana hannkaku & kana" do
      user = build(:user, real_last_name_kana: "ﾀﾛｳ")
      user.valid?
      expect(user.errors[:real_last_name_kana]).to include("is invalid")
    end
  end
end