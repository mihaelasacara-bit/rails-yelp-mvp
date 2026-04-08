# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Sushi Sushi", address: "Berliner Str. 32, 10117 Berlin", category: "japanese")
puts "Created Sushi Sushi"
Restaurant.create!(name: "Bagels Masha", address: "Str. Anton Pan nr. 10, Bucharest", category: "french")
puts "Created Bagels Masha"
Restaurant.create!(name: "Osteria", address: "Schonstr. 40, Bonn", category: "italian")
puts "Created Osteria"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
