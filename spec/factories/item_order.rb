FactoryBot.define do
  factory :item_order do
    postal_code { '123-4567' }
    prefecture_id { 7 }
    city { 'カンボジア市' }
    house_number { '南アフリカ町　１-2-3' }
    building { 'ところてん' }
    phone_number { '09000000000' }
    user_id   { 7 }
    item_id   { 7 }
    token     { 'tok_abcdefghijk00000000000000000'}
  end
end
