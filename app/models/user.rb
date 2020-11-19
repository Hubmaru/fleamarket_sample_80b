class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true

  has_many :seller_items, foreign_key: :seller_id, class_name: :items
  has_many :buyer_items, foreign_key: :buyer_id, class_name: :items
  has_many :credits, dependent: :destroy
  has_many :deliveries_addresses, dependent: :destroy
  has_many :likes

end
