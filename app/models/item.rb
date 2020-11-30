class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :seller, class_name: "User"
  belongs_to :category
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, :text, :prefecture_id, :condition_id, :cost_id, :days_id, :seller_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 100, less_than_or_equal_to: 9999999 }
  validates :images, presence: true, length: {minimum: 1, maximum: 10}
  has_many :likes
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :cost
  belongs_to_active_hash :days
  belongs_to_active_hash :condition
  belongs_to_active_hash :size
  validates :text, presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

end
