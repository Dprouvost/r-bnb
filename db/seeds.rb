# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
Profile.destroy_all
User.destroy_all
Category.destroy_all 


Category.create!(name: "Rock")
Category.create!(name: "Hip-Hop")
Category.create!(name: "Electro")
Category.create!(name: "Pop")
Category.create!(name: "Variety")
Category.create!(name: "Jazz")
Category.create!(name: "Classic")
Category.create!(name: "Techno")
Category.create!(name: "Reagge")
Category.create!(name: "Latino")
Category.create!(name: "Blues")
Category.create!(name: "Metal")
Category.create!(name: "House")
Category.create!(name: "Boys Band")
Category.create!(name: "Disco")
Category.create!(name: "Funk")
Category.create!(name: "Psychedelic Rock")
Category.create!(name: "Tango")
Category.create!(name: "Country")


Category.create!(name: "Deep House")

puts "Generating buyer..."

buyer = User.create!(email: "buyer@buyer.com", password: "123456")
Profile.create!(first_name: "John", last_name: "Doe", user_type: "Buyer", user_id: buyer.id)

puts "Buyer done - Generating sellers..."

cat = Category.where(name: "Psychedelic Rock")
seller = User.create!(email:"seller@seller.com", password:"123456")
profile = Profile.create!(first_name: "Jamy", last_name:"Hendrix", user_type: "Seller", user_id: seller.id)
artist = Artist.create!(band_name: "cépasorcier", photo_url: "https://vdr-nation.com/wp-content/uploads/2019/01/jamy-hendrix.jpg", music_url: "https://www.youtube.com/embed/2Fh2fD0R6EA", price: 6805, location: "Demandez à Marcel", area_range: 50, description: "Jamy Gourmaud, également connu sous son prénom Jamy, est un journaliste et animateur de télévision français né le 17 janvier 1964 à Fontenay-le-Comte.", profile_id: profile.id, category_id: cat.ids.first)


cat_funk = Category.where(name: "Funk")
second_seller = User.create!(email:"kool@kool.com", password:"123456")
second_profile = Profile.create!(first_name: "Jamie", last_name:"Fox", user_type: "Seller", user_id: second_seller.id)
second_artist = Artist.create!(band_name: "Kool and the Gang", photo_url: "https://images.lpcdn.ca/641x427/200906/30/90578-robert-kool-bell-frere-ronald.jpg", music_url: "https://www.youtube.com/embed/qchPLaiKocI", price: 10000, location: "NYC", area_range: 1000, description: "Kool and the Gang (Kool & the Gang) est un groupe de jazz-funk et de funk formé à Jersey City dans le New Jersey en 1964.", profile_id: second_profile.id, category_id: cat_funk.ids.first)
# review = Review.create!(rating: 5, comment: "Exceptionnel", artist_id: artist.id)
puts "Seller done."

