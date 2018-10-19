# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all
Whiplash = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Whiplash.m4a')
Caravan = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Caravan.m4a')
Casey_song = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Casey_song.m4a')

A_lovely_night = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/A_Lovely_Night.m4a')
Another_Day_of_Sun = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Another_Day_of_Sun.m4a')
Audition = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Audition.m4a')
City_of_Stars = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/City_of_Stars.m4a')
Someone_In_The_Crowd = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Someone_In_The_Crowd.m4a')
Start_A_Fire = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Start_a_Fire.m4a')

Song.create(title: "Whiplash",album_id:1).track.attach(io: Whiplash, filename: "Whiplash.m4a")
Song.create(title: "Caravan",album_id:1).track.attach(io: Caravan, filename: 'Caravan.m4a' )
Song.create(title: "Casey_song",album_id:1).track.attach(io:  Casey_song, filename: 'Casey_song.m4a'  )

Song.create(title: "A Lovely Night", album_id:2).track.attach(io: A_lovely_night , filename: 'A_lovely_night.m4a'  )
Song.create(title: "Another Day of Sun", album_id:2).track.attach(io:  Another_Day_of_Sun, filename: 'Another_Day_of_Sun.m4a' )
Song.create(title: "Audition", album_id:2).track.attach(io: Audition , filename: 'Audition.m4a' )
Song.create(title: "City of Stars", album_id:2).track.attach(io: City_of_Stars, filename: 'City_of_Stars.m4a' )
Song.create(title: "Someone in The Crowd", album_id:2).track.attach(io:  Someone_In_The_Crowd, filename: 'Someone_In_The_Crowd.m4a' )
Song.create(title: "Start a Fire", album_id:2).track.attach(io: Start_A_Fire, filename: 'Start_A_Fire.m4a' )






Album.destroy_all

Whiplash_cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/whiplash_cover.jpg')
La_La_Land_cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/La_La_Land_cover.jpg')



Album.create(title: "Whiplash_soundtrack", artist_id: 0).album_coverattach(io: Whiplash_cover, filename: 'Whiplash_cover.jpg' )
Album.create(title: "La La Land", artist_id: 0).album_cover.attach(io: La_La_Land_cover, filename: 'La_La_Land_cover.jp1' )

#
# Song.destroy_all
#
# Song.create(title: "Whiplash",album_id:1).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/whiplash_soundtrack/Whiplash.m4a"), filename: "Whiplash.m4a")
# Song.create(title: "Caravan",album_id:1).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/whiplash_soundtrack/Caravan.m4a"), filename: "Caravan.m4a")
# Song.create(title: "Casey_song",album_id:1).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/whiplash_soundtrack/casey_song.m4a"), filename: "casey_song.m4a")
#
# Song.create(title: "A Lovely Night", album_id:2).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/la_la_land_soundtrack/A_Lovely_Night.m4a"), filename: "A_Lovely_Night.m4a")
# Song.create(title: "Another Day of Sun", album_id:2).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/la_la_land_soundtrack/Another_Day_of_Sun.m4a"), filename: "Another_Day_of_Sun.m4a")
# Song.create(title: "Audition", album_id:2).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/la_la_land_soundtrack/Audition.m4a"), filename: "Audition.m4a")
# Song.create(title: "City of Stars", album_id:2).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/la_la_land_soundtrack/City_of_Stars.m4a"), filename: "City_of_Stars.m4a")
# Song.create(title: "Someone in The Crowd", album_id:2).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/la_la_land_soundtrack/Someone_In_The_Crowd.m4a"), filename: "Someone_In_The_Crowd.m4a")
# Song.create(title: "Start a Fire", album_id:2).track.attach(io: File.open("/Users/chrisatwood/Desktop/dotify_music/la_la_land_soundtrack/Start_A_Fire.m4a"), filename: "Start_A_Fire.m4a")
