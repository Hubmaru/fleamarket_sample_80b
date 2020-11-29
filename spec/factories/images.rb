FactoryBot.define do

  factory :image do
    id {1}
    photo {File.open("#{Rails.root}/spec/fixtures/sample.jpg")}
    item_id {1}
    
    association :item
  end
 
end