FactoryBot.define do
  factory :item do
    name              { Faker::Name.initials(number: 6) }
    info           { Faker::Lorem.sentence }
    price             { 777 }
    category_id       { 2 }
    sales_status_id         { 2 }
    shipping_fee_status_id   { 2 }
    prefecture_id     { 2 }
    scheduled_delivery_id   { 2 }
    association :user
  end
end