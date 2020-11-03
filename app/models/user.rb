class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :real_family_name, :real_last_name, :real_family_name_kana, :real_last_name_kana, :birth, presence: true, uniqueness: true
  has_many :delivery_addresses
end