# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
require 'rest-client'
require 'json'
# require 'pry'

Rental.destroy_all
User.destroy_all
Pet.destroy_all


10.times do
    # get random user photo from api
    response = RestClient.get('https://randomuser.me/api/')
    
    # binding.pry
    user = User.new
    user.name = Faker::Name.first_name
    user.email = "#{user.name}@gmail.com"
    user.password = '123456789'
    user.bio = Faker::Lorem.paragraph(sentence_count: 4, supplemental: true)
    user.location = 'New York'
    user.img_url = JSON.parse(response)["results"][0]["picture"]["large"]
    user.save
end

10.times do
    animal = ["cat","dog","hamster","turtle","goldfish"]
    response = RestClient.get('https://dog.ceo/api/breeds/image/random')
    


    Pet.create(name: Faker::Creature::Dog.name,
                breed: Faker::Creature::Dog.breed,
                bio: Faker::Lorem.paragraph(sentence_count: 15, supplemental: true),
                image: JSON.parse(response)["message"] ,
                cost: rand(10..50),
                user_id: User.all.sample.id,
                available: "true"
                )
end

10.times do
    Rental.create(pet_id: Pet.all.sample.id,
                    user_id: User.all.sample.id,
                    rent_length: rand(1..7),
                    pet_rating: rand(1..5)
    )
end