class Image < ApplicationRecord
  belongs_to :item
  mount_uploader :photo, ImagesUploader
  validates :photo, :item_id, presence: true
end