# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."
# dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5}
# pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}

# [dishoom, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"




puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating sample db..."

10.times do
  Restaurant.create!(name: Faker::Restaurant.name,
    rating: rand(1..5),
   address: Faker::Address.street_address,
   chef_name: Faker::TvShows::RuPaul.queen ,
   chef_quote: Faker::Movies::HarryPotter.quote)
end

puts "DB created!"
