class DeliveryAddress < ApplicationRecord
  validates :delivery_family_name, :delivery_last_name, :delivery_family_name_kana, :delivery_last_name_kana, :postal_code, :prefecture, :municipality, :address, presence: true
  validates :delivery_family_name, :delivery_last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/}
  validates :delivery_family_name_kana, :delivery_last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
  belongs_to :user, optional: true
end