FactoryBot.define do
  factory :user do
    email                  { Faker::Internet.free_email }
    password               { 'aaa111' }
    password_confirmation  { password }
    nickname               { Faker::Name.initials(number: 3) }
    last_name              { '高橋' }
    first_name             { 'たかし' }
    last_name_kana         { 'タカハシ' }
    first_name_kana        { 'タカシ' }
    birth_date             { Faker::Date.between(from: '1990-01-01', to: '2010-12-31') }
  end
end
