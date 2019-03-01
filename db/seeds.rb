# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Profile.destroy_all
Artist.destroy_all
Category.destroy_all 

Category.destroy_all
Artist.destroy_all


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

puts "Buyer done - Generating seller..."

cat = Category.where(name: "Psychedelic Rock")
seller = User.create!(email:"seller@seller.com", password:"123456")
profile = Profile.create!(first_name: "Jamy", last_name:"Hendrix", user_type: "Seller", user_id: seller.id)
artist = Artist.create!(band_name: "cépasorcier", photo_url: "https://vdr-nation.com/wp-content/uploads/2019/01/jamy-hendrix.jpg", music_url: "https://www.youtube.com/watch?v=0aDr3vieKvo", price: 6805, location: "Demandez à Marcel", area_range: 50, description: "Jamy Gourmaud, également connu sous son prénom Jamy, est un journaliste et animateur de télévision français né le 17 janvier 1964 à Fontenay-le-Comte.", profile_id: profile.id, category_id: cat.ids.first)
review = Review.create!(rating: 4, comment: "bkjwdjwioe fiwefiwefjew ihfwe")
# artist.review_id = review.id
review.artist_id = artist.id
puts "Seller done."

