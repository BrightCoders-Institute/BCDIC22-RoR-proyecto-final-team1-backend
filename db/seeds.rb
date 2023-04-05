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
dummyReview = Review.create(user_id: 1, place_id: 1, comment: 'it was great')
dummyAmenity1 = Amenity.create(name: "Vista al jardín")
dummyAmenity2 = Amenity.create(name: "Vista a la playa")
dummyAmenity3 = Amenity.create(name: "Cocina")
dummyAmenity4 = Amenity.create(name: "Estacionamiento gratuito en las instalaciones")
dummyAmenity5 = Amenity.create(name: "Jacuzzi privado")
dummyAmenity6 = Amenity.create(name: "Televisión y televisión por cable estándar")
dummyAmenity7 = Amenity.create(name: "Terraza o balcón")
dummyAmenity8 = Amenity.create(name: "Jardín privado, Con valla en parte del perímetro")
dummyAmenity9 = Amenity.create(name: "WIFI")
dummyAmenity10 = Amenity.create(name: "Libre de humo de tabaco")
addAmenity = PlaceAmenity.create(place_id: 1, amenity_id: 1) # creates the join record directly

puts "Seed data successfully loaded!"
