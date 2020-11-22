FactoryBot.define do

  factory :item do
    id {1}
    name {'aaaa'}
    text {'bbbb'}
    price {1000}
    prefecture_id {1}
    condition_id {1}
    cost_id {1}
    brand {""}
    days_id {1}
    seller_id {1}
    buyer_id {}

    association :category
    
    trait :image do
      after(:build) do |item|
        item.images << build(:image, item: item)
      end 
    end

    trait :images do
      after(:build) do |item|
        item.images  << build_list(:image, 11, item: item)
      end 
    end
 
  end
end