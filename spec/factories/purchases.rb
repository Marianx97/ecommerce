FactoryBot.define do
  factory :purchase do
    user { create :user }
    products { create_list :product, 3 }
  end
end
