# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  Product.create(
    name: Faker::Commerce.product_name,
    content: Faker::Lorem.paragraph,
    quantity: Faker::Number.between(from: 1, to: 100),
    price: Faker::Commerce.price(range: 0.0..100.0),
    available: Faker::Boolean.boolean,
    released_at: Faker::Date.between(from: '2020-01-01', to: Date.today),
    discount: Faker::Commerce.price(range: 0.0..20.0),
    created_at: Time.now,
    updated_at: Time.now,
    image: Faker::Internet.url
  )
end