# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

things = [
'http://www.eoildiffuser.com/wp-content/uploads/2015/04/MUJI-Aroma-Diffuser-11SS-ultrasonic-waves-with-light.jpg','https://s-media-cache-ak0.pinimg.com/564x/37/b8/12/37b812027f455312c04dd8d2c4b420ec.jpg','http://img.muji.net/img/item/4934761013107_02_400.jpg','https://images-na.ssl-images-amazon.com/images/I/31zCz0byftL.jpg','http://lovelace-media.imgix.net/uploads/816/d1f8be90-bbbb-0132-46c0-0e9062a7590a.jpg?w=700&fit=max&auto=format&q=70','http://g02.a.alicdn.com/kf/HTB1mc0DJFXXXXa6XFXXq6xXFXXXt/Muji-Office-Organizer-Transparent-Acrylic-Drawer-Storage-Box-Jewelry-Box-Fashion-Style-Cosmetic-debris-Organizer-drawer.jpg','http://www.takaski.com/wp-content/uploads/2015/10/4547315136865_20_400.jpg','http://images.publicradio.org/content/2013/08/27/20130827_lil-bub_91.jpg','http://www.pictures-of-cats.org/images/russian-blue-cat-grey-cat-breeds.jpg'
]



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

10.times do |n|
  product_name        = Faker::Commerce.product_name
  country             = Faker::Address.country
  product_description = Faker::Lorem.paragraph
  price               = Faker::Commerce.price
  imgurl              = things.sample
  user_id             = Faker::Number.between(1, 5)

  Product.create!( product_name:        product_name,
                   country:             country,
                   product_description: product_description,
                   price:               price,
                   imgurl:              imgurl,
                   user_id:             user_id
                  )
end
