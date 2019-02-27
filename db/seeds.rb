# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

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
cat = Category.create!(name: "Deep House")


user = User.create!(email: "theooeoe@gmail.com", password: "tototo")
profile = Profile.create!(first_name: "Theo", last_name: "Watine", user_type: "Buyer", users_id: user)
artist = Artist.create!(band_name: "ACDC", photo_url: "https:///yes.com", music_url: "https://music-url.com", price: 700, location: "Paris", area_range: 80, description: "blabla", category: cat, profile_id: profile )

# ACDC = Artist.create!(as: DateTime.parse("09/03/2019"))
# ACDC = Artist.create!(available_date: DateTime.parse("10/03/2019"))

# Schedule.create!(artist: "ACDC")
Schedule.create!(artist_id: Artist.where(band_name: "ACDC").ids[0], date: DateTime.parse("12/03/2019"))