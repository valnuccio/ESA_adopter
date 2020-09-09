# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'httparty'

5.times do
    
    user = User.new
    user.name = Faker::Name.first_name
    user.email = "#{user.name}@gmail.com"
    user.password = '123456789'
    user.bio = Faker::Lorem.paragraph(sentence_count: 4, supplemental: true)
    user.location = 'New York'
    user.save
end

10.times do
    animal = ["cat","dog","hamster","turtle","goldfish"]
    url = 'https://dog.ceo/api/breeds/image/random'
    response = HTTParty.get(url)


    Pet.create(name: Faker::Creature::Dog.name,
                breed: Faker::Creature::Dog.breed,
                bio: Faker::Lorem.paragraph(sentence_count: 15, supplemental: true),
                image: response.parsed_response["message"] ,
                cost: rand(10..50).to_f.round(2),
                user_id: User.all.sample.id,
                available: true
                )
end

10.times do
    Rental.create(pet_id: Pet.all.sample.id,
                    user_id: User.all.sample.id,
                    rent_length: rand(1..7),
                    pet_rating: rand(1..5)
    )
end