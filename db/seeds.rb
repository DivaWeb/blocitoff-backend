require 'faker'

50.times do
  User.create!(

    email: Faker::Internet.unique.email,
    password: Faker::Internet.unique.password(8)

  )
end

users = User.all

50.times do
  Item.create!(
        user: users.sample,
        name: Faker::Lorem.characters(6)

  )
end

puts "seed finished"
puts "#{User.count} users created"
puts "#{Item.count} todos created"
