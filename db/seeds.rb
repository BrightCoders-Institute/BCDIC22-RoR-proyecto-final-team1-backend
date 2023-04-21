# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed for users
dummy_user = User.create(name: 'Carlos', email: 'carlos@email.com', password: 123_456, phone_number: '3124567457',
                         address: 'Las palomas blancas #53')
dummy_user = User.create(name: 'Yaxkin', email: 'yaxkin@email.com', password: 123_456, phone_number: '3124567458',
                         address: 'Las palomas blancas #53')
dummy_user = User.create(name: 'Severo', email: 'severo@email.com', password: 123_456, phone_number: '3124567459',
                         address: 'Las palomas blancas #53')
dummy_user = User.create(name: 'Pichu', email: 'pichu@email.com', password: 123_456, phone_number: '3124567460',
                         address: 'Las palomas blancas #53')

# Seed for states
dummy_state = State.create(name: 'Colima')
dummy_state = State.create(name: 'Quintana Roo')
dummy_state = State.create(name: 'Guanajuato')
dummy_state = State.create(name: 'Amazonas')
dummy_state = State.create(name: 'Bolívar')
dummy_state = State.create(name: 'Risaralda')

# Seed for cities
dummy_city = City.create(state_id: 1, name: 'Colima')
dummy_city = City.create(state_id: 1, name: 'Manzanillo')
dummy_city = City.create(state_id: 1, name: 'Villa de Álvarez')
dummy_city = City.create(state_id: 2, name: 'Cancún')
dummy_city = City.create(state_id: 2, name: 'Chetumal')
dummy_city = City.create(state_id: 2, name: 'Playa del Carmen')
dummy_city = City.create(state_id: 3, name: 'Irapuato')
dummy_city = City.create(state_id: 3, name: 'León')
dummy_city = City.create(state_id: 3, name: 'Salamanca')
dummy_city = City.create(state_id: 4, name: 'Leticia')
dummy_city = City.create(state_id: 4, name: 'La Chorrera')
dummy_city = City.create(state_id: 4, name: 'El Encanto')
dummy_city = City.create(state_id: 5, name: 'Santa Catalina')
dummy_city = City.create(state_id: 5, name: 'San Estanislao')
dummy_city = City.create(state_id: 5, name: 'Montecristo')
dummy_city = City.create(state_id: 6, name: 'Dosquebradas')
dummy_city = City.create(state_id: 6, name: 'Quinchía')
dummy_city = City.create(state_id: 6, name: 'Santuario')

# Seed for places
dummy_place = Place.create(user_id: 1, name: 'Casa Familiar alberca y aire acondicionado', city_id: 1, description: 'Alojamiento entero: departamento con servicios incluidos.',
                           number_rooms: 2, number_bathrooms: 2, max_guest: 5, price_by_night: 880, latitude: 19.234382143196765, longitude: -103.7135875272428)
dummy_place = Place.create(user_id: 2, name: 'Casa Caribe Cancun', city_id: 4, description: 'Alojamiento entero',
                           number_rooms: 2, number_bathrooms: 1, max_guest: 4, price_by_night: 550, latitude: 21.184408831542136, longitude: -86.8075962808708)
dummy_place = Place.create(user_id: 3, name: 'Bonito Departamento a pocos metros de Plaza Mayor', city_id: 8, description: 'Alojamiento entero: departamento con servicios incluidos.',
                           number_rooms: 1, number_bathrooms: 1, max_guest: 2, price_by_night: 605, latitude: 21.10383443437598, longitude: -101.63952205444201)
dummy_place = Place.create(user_id: 4, name: 'Apartamento moderno con jacuzzi en Cartagena', city_id: 14, description: 'Alojamiento entero: condominio.',
                           number_rooms: 2, number_bathrooms: 2, max_guest: 6, price_by_night: 1275, latitude: 10.39920360742393, longitude: -75.1497003832042)

# Seed for reviews
dummy_review = Review.create(user_id: 1, place_id: 1, comment: 'it was great')
dummy_review = Review.create(user_id: 1, place_id: 2, comment: 'it was amazing')
dummy_review = Review.create(user_id: 1, place_id: 3, comment: 'it was excellent')
dummy_review = Review.create(user_id: 1, place_id: 4, comment: 'it was the best experience of my life')
dummy_review = Review.create(user_id: 2, place_id: 1, comment: 'it was good')
dummy_review = Review.create(user_id: 2, place_id: 2, comment: 'it was better than others')
dummy_review = Review.create(user_id: 2, place_id: 3, comment: 'it was almost perfect')
dummy_review = Review.create(user_id: 2, place_id: 4, comment: 'it was a great one, but it could have been better')
dummy_review = Review.create(user_id: 3, place_id: 1, comment: 'it was bad')
dummy_review = Review.create(user_id: 3, place_id: 2, comment: 'it was disappointing')
dummy_review = Review.create(user_id: 3, place_id: 3, comment: 'it was one of the worst places i have been')
dummy_review = Review.create(user_id: 3, place_id: 4, comment: 'it was so bad i wanted to leave from the start')
dummy_review = Review.create(user_id: 4, place_id: 1, comment: 'it was terrible')
dummy_review = Review.create(user_id: 4, place_id: 2, comment: 'it was so unbelievable how bad it was')
dummy_review = Review.create(user_id: 4, place_id: 3, comment: 'it was the worst place i have ever been')
dummy_review = Review.create(user_id: 4, place_id: 4, comment: 'it was so trash that even trash gets offended')

# Seed for reservations
dummy_reservation = Reservation.create(starting_date: Date.today, ending_date: Date.today + 7, total_price: 1200,
                                       place_id: 4, user_id: 1)
dummy_reservation = Reservation.create(starting_date: Date.today, ending_date: Date.today + 7, total_price: 1200,
                                       place_id: 4, user_id: 2)
dummy_reservation = Reservation.create(starting_date: Date.today, ending_date: Date.today + 7, total_price: 1200,
                                       place_id: 4, user_id: 3)
dummy_reservation = Reservation.create(starting_date: Date.today, ending_date: Date.today + 7, total_price: 1200,
                                       place_id: 4, user_id: 4)

# Seed for amenities
dummy_amenity1 = Amenity.create(name: 'Vista al jardín')
dummy_amenity2 = Amenity.create(name: 'Vista a la playa')
dummy_amenity3 = Amenity.create(name: 'Cocina')
dummy_amenity4 = Amenity.create(name: 'Estacionamiento gratuito en las instalaciones')
dummy_amenity5 = Amenity.create(name: 'Jacuzzi privado')
dummy_amenity6 = Amenity.create(name: 'Televisión y televisión por cable estándar')
dummy_amenity7 = Amenity.create(name: 'Terraza o balcón')
dummy_amenity8 = Amenity.create(name: 'Jardín privado, Con valla en parte del perímetro')
dummy_amenity9 = Amenity.create(name: 'WIFI')
dummy_amenity10 = Amenity.create(name: 'Libre de humo de tabaco')

# Seed for place amenity
add_amenity = PlaceAmenity.create(place_id: 1, amenity_id: 1) # creates the join record directly

puts 'Seed data successfully loaded!'
