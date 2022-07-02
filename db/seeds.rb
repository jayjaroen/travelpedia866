# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Location.destroy_all

user = User.create(email: "test@test.com", password: 123456)
p "created #{User.count} users"

names = ["Shanghai" , " Beijing", "Xi'an" ,"Chengdu" , "Sanya" ,"Xiamen"]
names.each do |name|
  location = Location.create(name: name)
  # 5.times do
  i = Itinerary.new(name: Faker::Lorem.word, description: Faker::Movie.quote, comment: Faker::GreekPhilosophers.quote, user: User.first, location: location)
  i.save

end
p "created #{Location.count} locations"
p "created #{Itinerary.count} itineraries"


# i1 = Itinerary.new(name: , user: user, location: location)
# i1.save
# i2 = Itinerary.new(name: , user: user, location: location)
# i2.save
