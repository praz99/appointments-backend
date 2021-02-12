# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
houses = House.create([house_type: 'Villa', number_of_rooms: 3, location: 'Warsaw', price: 100000, built_date: '1998-01-01', description: 'A very nice house on the edge of the city.', image: 'https://www.exampleurl.com/images/something123/house.jpg'])
