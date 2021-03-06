class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :nickname, presence: true, uniqueness: true
  validates :real_family_name, :real_last_name, :real_family_name_kana, :real_last_name_kana, :birth, presence: true
  validates :real_family_name, :real_last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/}
  validates :real_family_name_kana, :real_last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }

  has_many :seller_items, foreign_key: :seller_id, class_name: :items
  has_many :buyer_items, foreign_key: :buyer_id, class_name: :items
  has_many :likes
  has_many :comments
  has_one :delivery_address, dependent: :destroy
  has_one :card, dependent: :destroy
  
end
