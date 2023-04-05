# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

dummy_user = User.create(name: 'Carlos', email: 'carlos@email.com', password: 123456, phone_number: '3124567457', address: 'Las palomas blancas #53')
dummy_user = User.create(name: 'Yaxkin', email: 'yaxkin@email.com', password: 123456, phone_number: '3124567458', address: 'Las palomas blancas #53')
dummy_user = User.create(name: 'Severo', email: 'severo@email.com', password: 123456, phone_number: '3124567459', address: 'Las palomas blancas #53')
dummy_user = User.create(name: 'Pichu', email: 'pichu@email.com', password: 123456, phone_number: '3124567460', address: 'Las palomas blancas #53')
dummy_state = State.create(name: 'Quintana Roo')
dummy_city = City.create(state_id: 1, name: 'Cancún')
dummy_place = Place.create(user_id: 1, name: 'Casa Caribe Cancun', city_id: 1, description: 'Alojamiento entero', number_rooms: 2, number_bathrooms: 1, max_guest: 4, price_by_night: 100, latitude: 21.184408831542136, longitude: -86.8075962808708)
dummy_review = Review.create(user_id: 1, place_id: 1, comment: 'it was great')