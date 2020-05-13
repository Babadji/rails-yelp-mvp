# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Restaurant.destroy_all

puts "Creating Restaurants"

restaurant1 = Restaurant.create!(name: "Joy Food", address: "Paris", category:"french")

puts "#{restaurant1.name} created"

restaurant2 = Restaurant.create!(name: "À la bonne fourchette", address: "Ivry", category:"french")

puts "#{restaurant2.name} created"

restaurant3 = Restaurant.create!(name: "Viva la pizza", address: "Rome", category:"italian")

puts "#{restaurant3.name} created"

restaurant4 = Restaurant.create!(name: "Nokogiri", address: "Paris", category:"japanese")

puts "#{restaurant4.name} created"

restaurant5 = Restaurant.create!(name: "La fritte en foliz", address: "Londres", category:"belgian")

puts "#{restaurant5.name} created"

puts "All good!"
