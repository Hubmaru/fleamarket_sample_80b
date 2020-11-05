class DeliveryAddress < ApplicationRecord
  validates :phone, presence: true, uniqueness: true
  validates :delivery_family_name, :delivery_last_name, :delivery_family_name_kana, :delivery_last_name_kana, :postal_code, :prefecture, :municipality, :address, presence: true
  belongs_to :user, optional: true
end