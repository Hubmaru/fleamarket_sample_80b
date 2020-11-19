class Item < ApplicationRecord

    has_many :images, dependent: :destroy
    belongs_to :buyer, class_name: :user 
    belongs_to :seller, class_name: :user
    has_one :purchase
    belongs_to :brand
    accepts_nested_attributes_for :images, allow_destroy: true
    belongs_to :category
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :condition
    belongs_to_active_hash :size
    belongs_to_active_hash :shipment_source
    belongs_to_active_hash :days_to_ship
    belongs_to_active_hash :status
    belongs_to :user
    belongs_to_active_hash :cost
    has_many :likes
    validates :name, :text, :price, :shipment_source, :condition, presence: true
    
end
