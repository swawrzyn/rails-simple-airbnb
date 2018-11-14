# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"
Flat.destroy_all


puts "Generating flats"

10.times do |i|
  Flat.create!(name: Faker::Hipster.words(4).join(' '),
               address: Faker::Address.full_address,
               description: Faker::Hipster.paragraph,
               price_per_night: (100..500).to_a.sample,
               number_of_guests: (1..5).to_a.sample)
  puts "Creating flat ##{i + 1}"
end

puts "Generation complete!"
