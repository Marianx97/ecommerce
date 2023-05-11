FactoryBot.define do
  factory :cart do
    user { create :user }
    products { create_list :product, 3 }
  end
end
