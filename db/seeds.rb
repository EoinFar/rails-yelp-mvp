# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "323232323", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "234324343", category: "french"}
carluccios =  {name: "Carluccios", address: "32 Main St, London SW1 6CE", phone_number:"4343143", category: "french"}
nandos =  {name: "Nandos", address: "12 Great Portland St, London E4 2OP", phone_number:"4343143", category: "belgian"}
honest =  {name: "Honest", address: "56 Acre Lane, London SE1 5TZ", phone_number:"87978787", category: "japanese"}

[dishoom, pizza_east, carluccios, nandos, honest].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
