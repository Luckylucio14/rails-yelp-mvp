# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

La Mandarine = {name: "La Mandarine", address: "2 Rue de la Rivaudière, 44800 Saint-Herblain", rating: 3}
Mia Nonna =  {name: "Mia Nonna", address: "14 rue Beauregard, 44000 Nantes", rating: 4}
Le Mas des oliviers =  {name: "Le Mas des oliviers", address: "Rue Moulin de la Rousselière, 44800 Saint-Herblain", rating: 5}
Bombay =  {name: "Bombay", address: "6 B rue kervegan, 44000 Nantes", rating: 4}
Chez Fruta =  {name: "Chez Fruta", address: "2 rue Copernic, 44000 Nantes", rating: 5}
Que Me =  {name: "Que Me", address: "15 rue de la Juiverie, 44000 Nantes", rating: 1}

[La_Mandarine, Mia_Nonna, Le_Mas_des_oliviers, Bombay, Chez_Fruta, Que_me].each do |attributes|
restaurant = Restaurant.create!(attributes)
puts "Created #{restaurant.name}"

puts 'Finished!'
end