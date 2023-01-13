# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  Artwork.create([{ title: "Mona Lisa", image_url: "0001", artist_id: 1}, { title: "Nice Painting", image_url: "0002", artist_id: 2 }, { title: "Crappy Painting", image_url: "0003", artist_id: 3 }, { title: "Really Expensive NFT", image_url: "0004", artist_id: 1 }, { title: "The Nude Banana", image_url: "0005", artist_id: 2 }, { title: "Big Chungus", image_url: "0006", artist_id: 3 }])

  User.create([{username: "Bigdaniel"}, {username: "Biggermadhur"}, {username: "Smallchris"}])

  ArtworkShare.create([{viewer_id: 3, artwork_id: 1}, {viewer_id: 3, artwork_id: 2}])