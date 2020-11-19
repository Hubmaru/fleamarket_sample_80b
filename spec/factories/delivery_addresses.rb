FactoryBot.define do
  factory :delivery_address do
    delivery_family_name {"試験"}
    delivery_last_name {"太郎"}
    delivery_family_name_kana {"テスト"}
    delivery_last_name_kana {"タロウ"}
    postal_code {"000-0000"}
    prefecture {"都道府県"}
    municipality {"市区町村"}
    address {"0-00-0"}
    user
  end
end