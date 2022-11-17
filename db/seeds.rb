# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Tiny Sweety Flat London',
  address: '10 Downing Street London W9 1DT',
  description: 'For lovers only!. One double bedroom, open plan living area, small kitchen',
  price_per_night: 75,
  number_of_guests: 2
)

Flat.create!(
  name: 'THE party house London',
  address: 'Tottenham London W9 1DT',
  description: 'Fiesta is in the air! 4 double bedrooms, open plan living area, large kitchen and a beautiful dancefloor',
  price_per_night: 200,
  number_of_guests: 8
)

Flat.create!(
  name: 'Pitifull flat London',
  address: 'homeless stret London W9 1DT',
  description: 'It sucks. No bedroom, just a sofa, no kitchen and nothing else',
  price_per_night: 10,
  number_of_guests: 10
)
