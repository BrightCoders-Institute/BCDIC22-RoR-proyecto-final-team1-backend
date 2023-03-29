# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
dummyUser = User.create(name: "Carlos", email: 'carlos@email.com', password: 123456)
dummyState = State.create(name: 'Quintana Roo')
dummyCity = City.create(state_id: 1, name: 'Cancún')
dummyPlace = Place.create(user_id: 1, name: 'Casa Caribe Cancun', city_id: 1, description: 'Alojamiento entero', number_rooms: 2, number_bathrooms: 1, max_guest: 4, price_by_night: 100, latitude: 21.184408831542136, longitude: -86.8075962808708)