FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(min_length: 7)
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password {password}
    password_confirmation {password}
    real_family_name {"試験"}
    real_last_name {"太郎"}
    real_family_name_kana {"テスト"}
    real_last_name_kana {"タロウ"}
    birth {Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
  end
end