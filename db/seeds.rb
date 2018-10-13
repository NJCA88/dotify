# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.create(title: "casey_song",album_id:2).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/casey_song.m4a"), filename: "casey_song.m4a")
