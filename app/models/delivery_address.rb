class DeliveryAddress < ApplicationRecord
  belongs_to :user, optional: true
  validates :delivery_family_name, :delivery_last_name, :delivery_family_name_kana, :delivery_last_name_kana, :postal_code, :prefecture, :municipality, :address, :phone, presence: true
end