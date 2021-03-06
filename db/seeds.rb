# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Follow機能で使うフェイクユーザー
  99.times do |n|
    name = Faker::Name.name
    email = "Example#{n+1}@example.com"
    password = "password"
    user=User.create(
                     email:email,
                     password:password,
                     password_confirmation:password,
                     name:name,
                     admin:false,
                     notified_by_id:n+2
    )
  end
