class Size < ApplicationRecord
  has_ancestry
  has_many :items
end
