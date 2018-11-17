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


# map = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/anybody_map.mp3')
# window = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/waving.mp3')
# for_forever = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/for_forever.mp3')
# sincereley_me = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/me.mp3')
# requim = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/requim.mp3')
# tell_her = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/tell_her.mp3')
# disappear = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/disappear.mp3')
# found = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/found.mp3')
# glove = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/glove.mp3')
# only_us = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/only_us.mp3')
# good_for_you = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/good_for_you.mp3')
# words_fail = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/words_fail.mp3')
# so_small = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/so_small.mp3')
# finale = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/finale.mp3')


# Song.create(title: "Anybody have a map?", album_id:5).track.attach(io: map, filename: "anybody_map.mp3")
# Song.create(title: "Waving through a Window", album_id:5).track.attach(io: window, filename: "waving.mp3")
# Song.create(title: "For Forever", album_id:5).track.attach(io: for_forever, filename: "for_forever.mp3")
# Song.create(title: "Sincerely, Me", album_id:5).track.attach(io: sincereley_me, filename: "me.mp3")
# Song.create(title: "Requiem", album_id:5).track.attach(io: requim, filename: "requm.mp3")
# Song.create(title: "If I could Tell Her", album_id:5).track.attach(io: tell_her, filename: "tell_her")
# Song.create(title: "Disappear", album_id:5).track.attach(io: disappear, filename: "disappear.mp3")
# Song.create(title: "You Will Be Found", album_id:5).track.attach(io: found, filename: "found.mp3")
# Song.create(title: "To Break In a Glove", album_id:5).track.attach(io: glove, filename: "glove.mp3")
# Song.create(title: "Only Us", album_id:5).track.attach(io: only_us, filename: "only_us.mp3")
# Song.create(title: "Good For You", album_id:5).track.attach(io: good_for_you, filename: "good_for_you.mp3")
# Song.create(title: "Words Fail", album_id:5).track.attach(io: words_fail, filename: "words_fail.mp3")
# Song.create(title: "So Big / So Small", album_id:5).track.attach(io: so_small, filename: "so_small.mp3")
# Song.create(title: "Finale", album_id:5).track.attach(io: finale, filename: "finale.mp3")



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

# BJcover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/Folder.jpg')
# # BJ = Album.create(title: "Greatest Hits", artist_id: 1).album_cover.attach(io: BJcover, filename: 'Folder.jpg' )
# BJ = Album.find(6)

# Piano = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/01+-+Piano+Man+-+Billy+Joel.mp3')
# Home = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/02+-+You're+My+Home+-+Billy+Joel.mp3")
# Jack = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/03+-+Captain+Jack+-+Billy+Joel.mp3')
# Entertainer = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/04+-+The+Entertainer+-+Billy+Joel.mp3')
# Hollywood = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/05+-+Say+Goodbye+To+Hollywood+-+Billy+Joel.mp3")
# Miami = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/06+-+Miami+2017+(Seen+The+Lights+Go+Out+On+Broadway)+-+Billy+Joel.mp3")
# NYSM = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/07+-+New+York+State+Of+Mind+-+Billy+Joel.mp3")
# SAAW = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/08+-+She's+Always+A+Woman+-+Billy+Joel.mp3")
# MO = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/09+-+Movin'+Out+(Anthony's+Song)+-+Billy+Joel.mp3")
# OTGDY = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/10+-+Only+The+Good+Die+Young+-+Billy+Joel.mp3")
# JTWYA = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/11+-+Just+The+Way+You+Are+-+Billy+Joel.mp3")
# Honesty = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/12+-+Honesty+-+Billy+Joel.mp3")
# ML = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/13+-+My+Life+-+Billy+Joel.mp3")
# ISRARTM = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/14+-+It's+Still+Rock+And+Roll+To+Me+-+Billy+Joel.mp3")
# YMBR = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/15+-+You+May+Be+Right+-+Billy+Joel.mp3")
# DAMW = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/16+-+Don't+Ask+Me+Why+-+Billy+Joel.mp3")
# SGAW = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/17+-+She's+Got+A+Way+-+Billy+Joel.mp3")
# Allentown = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/18+-+Allentown+-+Billy+Joel.mp3")

# # Song.create(title: "Piano Man", album_id: 6 ).track.attach(io: Piano, filename: "01 - Piano Man - Billy Joel.mp3")
# # Song.create(title: "You're My Home", album_id: BJ.id ).track.attach(io: Home, filename: "02 - You're My Home - Billy Joel.mp3 ")
# Song.create(title: "Captain Jack", album_id: BJ.id ).track.attach(io: Jack, filename: "03 - Captain Jack - Billy Joel.mp3")
# Song.create(title: "The Entertainer", album_id: BJ.id ).track.attach(io: Entertainer, filename: "04 - The Entertainer - Billy Joel.mp3")
# Song.create(title: "Say Godbye To Hollywood", album_id: BJ.id ).track.attach(io: Hollywood, filename: "05 - Say Goodbye To Hollywood - Billy Joel.mp3")
# Song.create(title: "Miami 2017", album_id: BJ.id ).track.attach(io: Miami, filename: "	06 - Miami 2017 (Seen The Lights Go Out On Broadway) - Billy Joel.mp3")
# Song.create(title: "New York State of Mind", album_id: BJ.id ).track.attach(io: NYSM, filename: "07 - New York State Of Mind - Billy Joel.mp3")
# Song.create(title: "She's Always A Woman", album_id: BJ.id ).track.attach(io: SAAW, filename: "08 - She's Always A Woman - Billy Joel.mp3")
# Song.create(title: "Movin Out", album_id: BJ.id ).track.attach(io: MO, filename: "09 - Movin' Out (Anthony's Song) - Billy Joel.mp3")
# Song.create(title: "Only The Good Die Young", album_id: BJ.id ).track.attach(io: OTGDY, filename: "10 - Only The Good Die Young - Billy Joel.mp3")
# Song.create(title: "Just The Way You Are", album_id: BJ.id ).track.attach(io: JTWYA, filename: "11 - Just The Way You Are - Billy Joel.mp3")
# Song.create(title: "Honesty", album_id: BJ.id ).track.attach(io: Honesty, filename: "12 - Honesty - Billy Joel.mp3")
# Song.create(title: "My Life", album_id: BJ.id ).track.attach(io: ML, filename: "13 - My Life - Billy Joel.mp3")
# Song.create(title: "Its Still Rock and Roll to me", album_id: BJ.id ).track.attach(io: ISRARTM, filename: "14 - It's Still Rock And Roll To Me - Billy Joel.mp3")
# Song.create(title: "You May Be Right", album_id: BJ.id ).track.attach(io: YMBR, filename: "15 - You May Be Right - Billy Joel.mp3")
# Song.create(title: "Don't Ask Me Why", album_id: BJ.id ).track.attach(io: DAMW, filename: "16 - Don't Ask Me Why - Billy Joel.mp3")
# Song.create(title: "She's Got A Way", album_id: BJ.id ).track.attach(io: SGAW, filename: "17 - She's Got A Way - Billy Joel.mp3")
# Song.create(title: "Allentown", album_id: BJ.id ).track.attach(io: Allentown, filename: "18 - Allentown - Billy Joel.mp3")


# B18cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/Folder.jpg')
# Album.create(title: "Blink 182 Greatest Hits", artist_id: 2).album_cover.attach(io: B18cover, filename: 'Folder.jpg' )
# B18 = Album.find_by(title: "Blink 182 Greatest Hits")


# Carousel = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/01+-+Carousel.mp3")
# MM = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/01+-+Carousel.mp3")
#  Damnit = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/03+-+Dammit.mp3")
#  Josie = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/04+-+Josie.mp3")
#  WMAA = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/05+-+What's+My+Age+Again.mp3")
#  ATST = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/06+-+All+The+Small+Things.mp3")
#  AS = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/07+-+Adam's+Song.mp3")
#  MO = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/08+-+Man+Overboard.mp3")
#  TRS = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/09+-+The+Rock+Show.mp3")
#  FD = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/10+-+First+Date.mp3")
#  STFTK = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/11+-+Stay+Together+For+The+Kids.mp3")
#  FT = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/12+-+Feeling+This.mp3")
#  IMY = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/13+-+I+Miss+You.mp3")
#  Down = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/14+-+Down.mp3")
#  Always = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/15+-+Always.mp3")
#  NN = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/16+-+Not+Now.mp3")
#  AGAP = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/blink182/17+-+Another+Girl+Another+Planet.mp3")




# # Song.create(title: "Carousel", album_id: B18.id ).track.attach(io: Carousel, filename: "01 - Carousel.mp3")
# # Song.create(title: "M+Ms", album_id: B18.id ).track.attach(io: MM, filename: "02 - M+M's.mp3")
# # Song.create(title: "Dammit", album_id: B18.id ).track.attach(io: Damnit, filename: "03 - Dammit.mp3")
# # Song.create(title: "Josie", album_id: B18.id ).track.attach(io: Josie, filename: "04 - Josie.mp3")
# # Song.create(title: "What's My Age Again", album_id: B18.id ).track.attach(io: WMAA, filename: "05 - What's My Age Again.mp3")
# # Song.create(title: "All The Small Things", album_id: B18.id ).track.attach(io: ATST, filename: "06 - All The Small Things.mp3")
# # Song.create(title: "Adam's Song", album_id: B18.id ).track.attach(io: AS, filename: "07 - Adam's Song.mp3")
# # Song.create(title: "Man Overboard", album_id: B18.id ).track.attach(io: MO, filename: "08 - Man Overboard.mp3")
# # Song.create(title: "The Rock Show", album_id: B18.id ).track.attach(io: TRS, filename: "09 - The Rock Show.mp3")
# # Song.create(title: "First Date", album_id: B18.id ).track.attach(io: FD, filename: "10 - First Date.mp3")
# Song.create(title: "Stay Together for The Kids", album_id: B18.id ).track.attach(io: STFTK, filename: "11 - Stay Together For The Kids.mp3")
# Song.create(title: "Feeling This", album_id: B18.id ).track.attach(io: FT, filename: "12 - Feeling This.mp3")
# Song.create(title: "I Miss You", album_id: B18.id ).track.attach(io: IMY, filename: "13 - I Miss You.mp3")
# Song.create(title: "Down", album_id: B18.id ).track.attach(io: Down, filename: "14 - Down.mp3")
# Song.create(title: "Always", album_id: B18.id ).track.attach(io: Always, filename: "15 - Always.mp3")
# Song.create(title: "Not Now", album_id: B18.id ).track.attach(io: NN, filename: "16 - Not Now.mp3")
# Song.create(title: "Another Girl Another Planet", album_id: B18.id ).track.attach(io: AGAP, filename: "17 - Another Girl Another Planet.mp3")


#savable

# BScover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/Cover.jpg')
# Album.create(title: "1973", artist_id: 2).album_cover.attach(io: BScover, filename: 'Cover.jpg' )
# BS = Album.find_by(title: "1973")

#  Rosa= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/01+-+Bruce+Springsteen+-+Rosalita+(Come+Out+Tonight).mp3")
#  Thunder= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/02+-+Bruce+Springsteen+-+Thunder+Road.mp3")
#  BTN= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/03+-+Bruce+Springsteen+-+Born+to+Run.mp3")
#  Badlands= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/04+-+Bruce+Springsteen+-+Badlands.mp3")
#  TPL= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/05+-+Bruce+Springsteen+-+The+Promised+Land.mp3")
#  HH= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/06+-+Bruce+Springsteen+-+Hungry+Heart.mp3")
#  AC= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/07+-+Bruce+Springsteen+-+Atlantic+City.mp3")
#  BIUSA= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/08+-+Bruce+Springsteen+-+Born+in+the+U.S.A.mp3")
#  DITD= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/09+-+Bruce+Springsteen+-+Dancing+in+the+Dark.mp3")
#  BD= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/10+-+Bruce+Springsteen+-+Brilliant+Disguise.mp3")
#  HT= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/11+-+Bruce+Springsteen+-+Human+Touch.mp3")
#  SOP= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/12+-+Bruce+Springsteen+-+Streets+of+Philadelphia.mp3")
#  TGOTJ= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/13+-+Bruce+Springsteen+-+The+Ghost+of+Tom+Joad.mp3")
#  TR= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/14+-+Bruce+Springsteen+-+The+Rising.mp3")
#  RN= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/15+-+Bruce+Springsteen+-+Radio+Nowhere.mp3")
#  WOAD = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/16+-+Bruce+Springsteen+-+Working+on+A+Dream.mp3")
#  WECOOO= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/17+-+Bruce+Springsteen+-+We+Take+Care+of+Our+Own.mp3")
#  WB = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Bruce_Springsteen/18+-+Bruce+Springsteen+-+Wrecking+Ball.mp3")

# Song.create(title: "Rosalita", album_id: BS.id ).track.attach(io: Rosa, filename: "01 - Bruce Springsteen - Rosalita (Come Out Tonight).mp3")
# Song.create(title: "Thunder Road", album_id: BS.id ).track.attach(io: Thunder, filename: "02 - Bruce Springsteen - Thunder Road.mp3")
# Song.create(title: "Born to Run", album_id: BS.id ).track.attach(io: BTN, filename: "03 - Bruce Springsteen - Born to Run.mp3")
# Song.create(title: "Badlands", album_id: BS.id ).track.attach(io: Badlands, filename: "04 - Bruce Springsteen - Badlands.mp3")
# Song.create(title: "The Promised Land", album_id: BS.id ).track.attach(io: TPL, filename: "05 - Bruce Springsteen - The Promised Land.mp3")
# Song.create(title: "Hungry Heart", album_id: BS.id ).track.attach(io: HH, filename: "06 - Bruce Springsteen - Hungry Heart.mp3")
# Song.create(title: "Atlantic City", album_id: BS.id ).track.attach(io: AC, filename: "07 - Bruce Springsteen - Atlantic City.mp3")
# Song.create(title: "Born in the USA", album_id: BS.id ).track.attach(io: BIUSA, filename: "08 - Bruce Springsteen - Born in the U.S.A.mp3")
# Song.create(title: "Dancing in the Dark", album_id: BS.id ).track.attach(io: DITD, filename: "09 - Bruce Springsteen - Dancing in the Dark.mp3")
# Song.create(title: "Brilliant Disguise", album_id: BS.id ).track.attach(io: BD, filename: "10 - Bruce Springsteen - Brilliant Disguise.mp3")
# Song.create(title: "Human Touch", album_id: BS.id ).track.attach(io: HT, filename: "11 - Bruce Springsteen - Human Touch.mp3")
# Song.create(title: "Streets of Philadelphia", album_id: BS.id ).track.attach(io: SOP, filename: "12 - Bruce Springsteen - Streets of Philadelphia.mp3")
# Song.create(title: "The Ghost of Tom Joad", album_id: BS.id ).track.attach(io: TGOTJ, filename: "13 - Bruce Springsteen - The Ghost of Tom Joad.mp3")
# Song.create(title: "The Rising", album_id: BS.id ).track.attach(io: TR, filename: "14 - Bruce Springsteen - The Rising.mp3")
# Song.create(title: "Radio Nowhere", album_id: BS.id ).track.attach(io: RN, filename: "15 - Bruce Springsteen - Radio Nowhere.mp3")
# Song.create(title: "Working on A Dream", album_id: BS.id ).track.attach(io: WOAD, filename: "16 - Bruce Springsteen - Working on A Dream.mp3")
# Song.create(title: "We Take Care of Our Own", album_id: BS.id ).track.attach(io: WECOOO, filename: "17 - Bruce Springsteen - We Take Care of Our Own.mp3")
# Song.create(title: "Wrecking Ball", album_id: BS.id ).track.attach(io:WB , filename: "18 - Bruce Springsteen - Wrecking Ball.mp3")

MB20cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/matchbox_twenty_exil_mainstreet_2007_retail_cd-front.jpg')
Album.create(title: "Exile on Mainstream", artist_id: 5).album_cover.attach(io: MB20cover, filename: 'matchbox_twenty_exil_mainstreet_2007_retail_cd-front.jpg' )
MTB = Album.find_by(title: "Exile on Mainstream")

 HFWC= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/01+-+How+Far+We've+Come.mp3")
 IBYW= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/02+-+I'll+Believe+You+When.mp3")
 AYR= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/03+-+All+Your+Reasons.mp3")
 THT= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/04+-+These+Hard+Times.mp3")
 IIF= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/05+-+If+I+Fall.mp3")
 ICLYG= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/06+-+I+Can't+Let+You+Go.mp3")
 LD= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/07+-+Long+Day.mp3")
 Push= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/08+-+Push.mp3")
 RW= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/09+-+Real+World.mp3")
 TAM = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/10+-+3am.mp3")
 B2G= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/11+-+Back+2+Good.mp3")
 Bent= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/12+-+Bent.mp3")
 IFG= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/13+-+If+You're+Gone.mp3")
 MS= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/14+-+Mad+Season.mp3")
 Disease= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/15+-+Disease.mp3")
 Unwell= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/16+-+Unwell.mp3")
 BL= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/17+-+Bright+Lights.mp3")

 Song.create(title: "How Far We've Come", album_id: MTB.id ).track.attach(io: HFWC, filename: "01 - How Far We've Come.mp3")
 Song.create(title: "I'll Believe You Whe", album_id: MTB.id ).track.attach(io: IBYW, filename: "02 - I'll Believe You When.mp3")
 Song.create(title: "All Your Reasons", album_id: MTB.id ).track.attach(io: AYR, filename: "03 - All Your Reasons.mp3")
 Song.create(title: "These Hard Times", album_id: MTB.id ).track.attach(io: THT, filename: "04 - These Hard Times.mp3")
 Song.create(title: "If I Fall", album_id: MTB.id ).track.attach(io: IIF, filename: "05 - If I Fall.mp3")
 Song.create(title: "I Can't Let You Go", album_id: MTB.id ).track.attach(io: ICLYG, filename: "06 - I Can't Let You Go.mp3")
 Song.create(title: "Long Day", album_id: MTB.id ).track.attach(io: LD, filename: "07 - Long Day.mp3")
 Song.create(title: "Push", album_id: MTB.id ).track.attach(io: Push, filename: "08 - Push.mp3")
 Song.create(title: "Real World", album_id: MTB.id ).track.attach(io: RW, filename: "09 - Real World.mp3")
 Song.create(title: "3am", album_id: MTB.id ).track.attach(io: TAM, filename: "10 - 3am.mp3")
 Song.create(title: "Back 2 Good", album_id: MTB.id ).track.attach(io: B2G, filename: "11 - Back 2 Good.mp3")
 Song.create(title: "Bent", album_id: MTB.id ).track.attach(io: Bent, filename: "12 - Bent.mp3")
 Song.create(title: "If You're Gone", album_id: MTB.id ).track.attach(io: IFG, filename: "13 - If You're Gone.mp3")
 Song.create(title: "Mad Seasons", album_id: MTB.id ).track.attach(io: MS, filename: "14 - Mad Season.mp3")
 Song.create(title: "Disease", album_id: MTB.id ).track.attach(io: Disease, filename: "15 - Disease.mp3")
 Song.create(title: "Unwell", album_id: MTB.id ).track.attach(io: Unwell, filename: "16 - Unwell.mp3")
 Song.create(title: "Bright Lights", album_id: MTB.id ).track.attach(io: BL, filename: "17 - Bright Lights.mp3")
