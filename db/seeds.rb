# Creating Test user
User.create(email: 'user@test.com', password: 'fake_pass')

# Creating Producs
10.times do |i|
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price,
    stock: Faker::Number.between(from: 1, to: 10)
  )
end
