# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# Song.destroy_all
# Whiplash = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Whiplash.m4a')
# Caravan = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Caravan.m4a')
# Casey_song = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Casey_song.m4a')
#
# A_lovely_night = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/A_Lovely_Night.m4a')
# Another_Day_of_Sun = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Another_Day_of_Sun.m4a')
# Audition = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Audition.m4a')
# City_of_Stars = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/City_of_Stars.m4a')
# Someone_In_The_Crowd = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Someone_In_The_Crowd.m4a')
# Start_A_Fire = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Start_a_Fire.m4a')
#
# Song.create(title: "Whiplash",album_id:3).track.attach(io: Whiplash, filename: "Whiplash.m4a")
# Song.create(title: "Caravan",album_id:3).track.attach(io: Caravan, filename: 'Caravan.m4a' )
# Song.create(title: "Casey_song",album_id:3).track.attach(io:  Casey_song, filename: 'Casey_song.m4a'  )
#
# Song.create(title: "A Lovely Night", album_id:4).track.attach(io: A_lovely_night , filename: 'A_lovely_night.m4a'  )
# Song.create(title: "Another Day of Sun", album_id:4).track.attach(io:  Another_Day_of_Sun, filename: 'Another_Day_of_Sun.m4a' )
# Song.create(title: "Audition", album_id:4).track.attach(io: Audition , filename: 'Audition.m4a' )
# Song.create(title: "City of Stars", album_id:4).track.attach(io: City_of_Stars, filename: 'City_of_Stars.m4a' )
# Song.create(title: "Someone in The Crowd", album_id:4).track.attach(io:  Someone_In_The_Crowd, filename: 'Someone_In_The_Crowd.m4a' )
# Song.create(title: "Start a Fire", album_id:4).track.attach(io: Start_A_Fire, filename: 'Start_A_Fire.m4a' )
#
#
# DEH_cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/00-va-dear_evan_hansen_(original_broadway_cast_recording)-web-2017.jpg')
# Album.create(title: "Dear Evan Hanson", artist_id: 0).album_cover.attach(io: DEH_cover, filename: 'https://s3-us-west-1.amazonaws.com/dotify-song-dev/00-va-dear_evan_hansen_(original_broadway_cast_recording)-web-2017.jpg' )


map = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/anybody_map.mp3')
window = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/waving.mp3')
for_forever = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/for_forever.mp3')
sincereley_me = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/me.mp3')
requim = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/requim.mp3')
tell_her = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/tell_her.mp3')
disappear = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/disappear.mp3')
found = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/found.mp3')
glove = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/glove.mp3')
only_us = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/only_us.mp3')
good_for_you = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/good_for_you.mp3')
words_fail = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/words_fail.mp3')
so_small = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/so_small.mp3')
finale = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/finale.mp3')


Song.create(title: "Anybody have a map?", album_id:5).track.attach(io: map, filename: "anybody_map.mp3")
Song.create(title: "Waving through a Window", album_id:5).track.attach(io: window, filename: "waving.mp3")
Song.create(title: "For Forever", album_id:5).track.attach(io: for_forever, filename: "for_forever.mp3")
Song.create(title: "Sincerely, Me", album_id:5).track.attach(io: sincereley_me, filename: "me.mp3")
Song.create(title: "Requiem", album_id:5).track.attach(io: requim, filename: "requm.mp3")
Song.create(title: "If I could Tell Her", album_id:5).track.attach(io: tell_her, filename: "tell_her")
Song.create(title: "Disappear", album_id:5).track.attach(io: disappear, filename: "disappear.mp3")
Song.create(title: "You Will Be Found", album_id:5).track.attach(io: found, filename: "found.mp3")
Song.create(title: "To Break In a Glove", album_id:5).track.attach(io: glove, filename: "glove.mp3")
Song.create(title: "Only Us", album_id:5).track.attach(io: only_us, filename: "only_us.mp3")
Song.create(title: "Good For You", album_id:5).track.attach(io: good_for_you, filename: "good_for_you.mp3")
Song.create(title: "Words Fail", album_id:5).track.attach(io: words_fail, filename: "words_fail.mp3")
Song.create(title: "So Big / So Small", album_id:5).track.attach(io: so_small, filename: "so_small.mp3")
Song.create(title: "Finale", album_id:5).track.attach(io: finale, filename: "finale.mp3")



# Album.destroy_all
#
# La_La_Land_cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/La_La_Land_cover.jpg')
# Album.find(3).album_cover.purge
# Album.find(4).album_cover.purge
# Album.find(3).album_cover.attach(io: Whiplash_cover, filename: 'Whiplash_cover.jpg')
# Album.find(4).album_cover.attach(io: La_La_Land_cover, filename: 'La_La_Land_cover.jpg' )

#
# Album.create(title: "Whiplash_soundtrack", artist_id: 0).album_cover.attach(io: Whiplash_cover, filename: 'Whiplash_cover.jpg' )
# Album.create(title: "La La Land", artist_id: 0).album_cover.attach(io: La_La_Land_cover, filename: 'La_La_Land_cover.jpg' )

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
