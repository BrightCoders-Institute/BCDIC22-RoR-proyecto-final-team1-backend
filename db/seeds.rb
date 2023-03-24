# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
dummyUser = User.new(name: "Carlos", email: 'carlos@email.com', password: 123456)
dummyState = State.new(name: 'ATL')
dummyCity = City.new(state_id: 1, name: 'Barranquilla')
dummyPlace = Place.new(user_id: 1, name: 'Casa Normal', city_id: 1, description: 'Elegante', number_rooms: 2, number_bathrooms: 1, max_guest: 4, price_by_night: 100, latitude: 37.7749, longitude: -122.4194)