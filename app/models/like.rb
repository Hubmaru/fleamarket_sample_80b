class Like < ApplicationRecord
   
    belongs_to :user
    belongs_to :item
    has_many :likes_users, through: :likes, source: 'user'
end
