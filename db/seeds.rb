# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

10.times do
    Owner.create(name: Faker::JapaneseMedia::DragonBall.character, 
                phone: Faker::PhoneNumber.phone_number,
                age: rand(20..70))
end

20.times do
    Cat.create({name: Faker::GreekPhilosophers.name, 
                breed: Faker::Games::Pokemon.name, 
                owner: Owner.all.sample})
end