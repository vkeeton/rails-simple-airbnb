# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
print "starting to make flats"
4.times do
  Flat.create!(
    name: Faker::Lorem.words(number: 4),
    address: Faker::Address.street_address,
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: Faker::Number.within(range: 50..350),
    number_of_guests: Faker::Number.within(range: 1..10)
  )
end
print "done making flats!"
