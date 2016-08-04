# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  product_name        = Faker::Commerce.product_name
  country             = Faker::Address.country
  product_description = Faker::Lorem.paragraph
  price               = Faker::Commerce.price
  user_id             = Faker::Number.between(1, 5)

  Product.create!( product_name:        product_name,
                   country:             country,
                   product_description: product_description,
                   price:               price,
                   user_id:             user_id,
                  )
end

5.times do |n|
  first_name     = Faker::Name.first_name
  last_name      = Faker::Name.last_name
  email          = "hello-#{n+1}@gmail.com"
  password       = "password"

  User.create!( first_name:            first_name,
                last_name:             last_name,
                email:                 email,
                password:              password,
                password_confirmation: password
               )
end
