FactoryBot.define do
  factory :product do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    price { Faker::Number.decimal(l_digits: 3) }
    stock { Faker::Number.between(from: 1, to: 10) }
  end
end
