
# Album.all.destroy_all
# Song.all.destroy_all





# DEH_cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/00-va-dear_evan_hansen_(original_broadway_cast_recording)-web-2017.jpg')
# Album.create(title: "Dear Evan Hanson", artist_id: 0).album_cover.attach(io: DEH_cover, filename: 'https://s3-us-west-1.amazonaws.com/dotify-song-dev/00-va-dear_evan_hansen_(original_broadway_cast_recording)-web-2017.jpg')
# DEH = Album.find_by(title: "Dear Evan Hanson")

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


# Song.create(title: "Anybody have a map?", album_id: DEH.id).track.attach(io: map, filename: "anybody_map.mp3")
# Song.create(title: "Waving through a Window", album_id: DEH.id).track.attach(io: window, filename: "waving.mp3")
# Song.create(title: "For Forever", album_id: DEH.id).track.attach(io: for_forever, filename: "for_forever.mp3")
# Song.create(title: "Sincerely, Me", album_id: DEH.id).track.attach(io: sincereley_me, filename: "me.mp3")
# Song.create(title: "Requiem", album_id: DEH.id).track.attach(io: requim, filename: "requm.mp3")
# Song.create(title: "If I could Tell Her", album_id: DEH.id).track.attach(io: tell_her, filename: "tell_her")
# Song.create(title: "Disappear", album_id: DEH.id).track.attach(io: disappear, filename: "disappear.mp3")
# Song.create(title: "You Will Be Found", album_id: DEH.id).track.attach(io: found, filename: "found.mp3")
# Song.create(title: "To Break In a Glove", album_id: DEH.id).track.attach(io: glove, filename: "glove.mp3")
# Song.create(title: "Only Us", album_id: DEH.id).track.attach(io: only_us, filename: "only_us.mp3")
# Song.create(title: "Good For You", album_id: DEH.id).track.attach(io: good_for_you, filename: "good_for_you.mp3")
# Song.create(title: "Words Fail", album_id: DEH.id).track.attach(io: words_fail, filename: "words_fail.mp3")
# Song.create(title: "So Big / So Small", album_id: DEH.id).track.attach(io: so_small, filename: "so_small.mp3")
# Song.create(title: "Finale", album_id: DEH.id).track.attach(io: finale, filename: "finale.mp3")

# # dehCast = Artist.create(name: "Cast of Dear Evan Hanson")
# # items = [DEH]
# # DEH.songs.each do |





# BJcover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Billy_joel/Folder.jpg')
# Album.create(title: "Greatest Hits", artist_id: 1).album_cover.attach(io: BJcover, filename: 'Folder.jpg' )
# BJ = Album.find_by(title: "Greatest Hits")

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

# Song.create(title: "Piano Man", album_id: BJ.id ).track.attach(io: Piano, filename: "01 - Piano Man - Billy Joel.mp3")
# Song.create(title: "You're My Home", album_id: BJ.id ).track.attach(io: Home, filename: "02 - You're My Home - Billy Joel.mp3 ")
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



# Song.create(title: "Carousel", album_id: B18.id ).track.attach(io: Carousel, filename: "01 - Carousel.mp3")
# Song.create(title: "M+Ms", album_id: B18.id ).track.attach(io: MM, filename: "02 - M+M's.mp3")
# Song.create(title: "Dammit", album_id: B18.id ).track.attach(io: Damnit, filename: "03 - Dammit.mp3")
# Song.create(title: "Josie", album_id: B18.id ).track.attach(io: Josie, filename: "04 - Josie.mp3")
# Song.create(title: "What's My Age Again", album_id: B18.id ).track.attach(io: WMAA, filename: "05 - What's My Age Again.mp3")
# Song.create(title: "All The Small Things", album_id: B18.id ).track.attach(io: ATST, filename: "06 - All The Small Things.mp3")
# Song.create(title: "Adam's Song", album_id: B18.id ).track.attach(io: AS, filename: "07 - Adam's Song.mp3")
# Song.create(title: "Man Overboard", album_id: B18.id ).track.attach(io: MO, filename: "08 - Man Overboard.mp3")
# Song.create(title: "The Rock Show", album_id: B18.id ).track.attach(io: TRS, filename: "09 - The Rock Show.mp3")
# Song.create(title: "First Date", album_id: B18.id ).track.attach(io: FD, filename: "10 - First Date.mp3")
# Song.create(title: "Stay Together for The Kids", album_id: B18.id ).track.attach(io: STFTK, filename: "11 - Stay Together For The Kids.mp3")
# Song.create(title: "Feeling This", album_id: B18.id ).track.attach(io: FT, filename: "12 - Feeling This.mp3")
# Song.create(title: "I Miss You", album_id: B18.id ).track.attach(io: IMY, filename: "13 - I Miss You.mp3")
# Song.create(title: "Down", album_id: B18.id ).track.attach(io: Down, filename: "14 - Down.mp3")
# Song.create(title: "Always", album_id: B18.id ).track.attach(io: Always, filename: "15 - Always.mp3")
# Song.create(title: "Not Now", album_id: B18.id ).track.attach(io: NN, filename: "16 - Not Now.mp3")
# Song.create(title: "Another Girl Another Planet", album_id: B18.id ).track.attach(io: AGAP, filename: "17 - Another Girl Another Planet.mp3")




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


#  sleep(30)



# MB20cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/matchbox_twenty_exil_mainstreet_2007_retail_cd-front.jpg')
# Album.create(title: "Exile on Mainstream", artist_id: 5).album_cover.attach(io: MB20cover, filename: 'matchbox_twenty_exil_mainstreet_2007_retail_cd-front.jpg' )
# MTB = Album.find_by(title: "Exile on Mainstream")

#  HFWC= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/01+-+How+Far+We've+Come.mp3")
#  IBYW= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/02+-+I'll+Believe+You+When.mp3")
#  AYR= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/03+-+All+Your+Reasons.mp3")
#  THT= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/04+-+These+Hard+Times.mp3")
#  IIF= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/05+-+If+I+Fall.mp3")
#  ICLYG= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/06+-+I+Can't+Let+You+Go.mp3")
#  LD= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/07+-+Long+Day.mp3")
#  Push= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/08+-+Push.mp3")
#  RW= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/09+-+Real+World.mp3")
#  TAM = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/10+-+3am.mp3")
#  B2G= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/11+-+Back+2+Good.mp3")
#  Bent= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/12+-+Bent.mp3")
#  IFG= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/13+-+If+You're+Gone.mp3")
#  MS= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/14+-+Mad+Season.mp3")
#  Disease= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/15+-+Disease.mp3")
#  Unwell= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/16+-+Unwell.mp3")
#  BL= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Matchbox+20/17+-+Bright+Lights.mp3")

#  Song.create(title: "How Far We've Come", album_id: MTB.id ).track.attach(io: HFWC, filename: "01 - How Far We've Come.mp3")
#  Song.create(title: "I'll Believe You Whe", album_id: MTB.id ).track.attach(io: IBYW, filename: "02 - I'll Believe You When.mp3")
#  Song.create(title: "All Your Reasons", album_id: MTB.id ).track.attach(io: AYR, filename: "03 - All Your Reasons.mp3")
#  Song.create(title: "These Hard Times", album_id: MTB.id ).track.attach(io: THT, filename: "04 - These Hard Times.mp3")
#  Song.create(title: "If I Fall", album_id: MTB.id ).track.attach(io: IIF, filename: "05 - If I Fall.mp3")
#  Song.create(title: "I Can't Let You Go", album_id: MTB.id ).track.attach(io: ICLYG, filename: "06 - I Can't Let You Go.mp3")
#  Song.create(title: "Long Day", album_id: MTB.id ).track.attach(io: LD, filename: "07 - Long Day.mp3")
#  Song.create(title: "Push", album_id: MTB.id ).track.attach(io: Push, filename: "08 - Push.mp3")
#  Song.create(title: "Real World", album_id: MTB.id ).track.attach(io: RW, filename: "09 - Real World.mp3")
#  Song.create(title: "3am", album_id: MTB.id ).track.attach(io: TAM, filename: "10 - 3am.mp3")
#  Song.create(title: "Back 2 Good", album_id: MTB.id ).track.attach(io: B2G, filename: "11 - Back 2 Good.mp3")
#  Song.create(title: "Bent", album_id: MTB.id ).track.attach(io: Bent, filename: "12 - Bent.mp3")
#  Song.create(title: "If You're Gone", album_id: MTB.id ).track.attach(io: IFG, filename: "13 - If You're Gone.mp3")
#  Song.create(title: "Mad Seasons", album_id: MTB.id ).track.attach(io: MS, filename: "14 - Mad Season.mp3")
#  Song.create(title: "Disease", album_id: MTB.id ).track.attach(io: Disease, filename: "15 - Disease.mp3")
#  Song.create(title: "Unwell", album_id: MTB.id ).track.attach(io: Unwell, filename: "16 - Unwell.mp3")
#  Song.create(title: "Bright Lights", album_id: MTB.id ).track.attach(io: BL, filename: "17 - Bright Lights.mp3")




# M5cover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Cover.jpg')
# Album.create(title: "Red Pill Blues", artist_id: 6).album_cover.attach(io: M5cover, filename: 'Cover.jpg' )
# M5 = Album.find_by(title: "Red Pill Blues")

#  m01= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.01+-+Maroon+5+-+Best+4+U.mp3")
#  m02= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.02+-+Maroon+5+-+What+Lovers+Do+(feat.+SZA).mp3")
#  m03= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.03+-+Maroon+5+-+Wait.mp3")
#  m04= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.04+-+Maroon+5+-+Lips+On+You.mp3")
#  m05= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.05+-+Maroon+5+-+Bet+My+Heart.mp3")
#  m06= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.06+-+Maroon+5+%26+Julia+Michaels+-+Help+Me+Out.mp3")
#  m07= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.07+-+Maroon+5+-+Who+I+Am+(feat.+Lunchmoney+Lewis).mp3")
#  m08= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.08+-+Maroon+5+-+Whiskey+(feat.+A%24AP+Rocky).mp3")
#  m09= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.09+-+Maroon+5+-+Girls+Like+You.mp3")
#  m10= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.10+-+Maroon+5+-+Closure.mp3")
#  m11= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.11+-+Maroon+5+-+Denim+Jacket.mp3")
#  m12= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.12+-+Maroon+5+-+Visions.mp3")
#  m13= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.13+-+Maroon+5+-+Plastic+Rose.mp3")
#  m14 = EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.14+-+Maroon+5+-+Don't+Wanna+Know+(feat.+Kendrick+Lamar).mp3")
#  m15= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.15+-+Maroon+5+-+Cold+(feat.+Future).mp3")
#  m16= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.16+-+Maroon+5+-+Moves+Like+Jagger+(Live+In+Manchester).mp3")
#  m17= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.17+-+Maroon+5+-+Stereo+Hearts+(Live+In+Manchester).mp3")
#  m18= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.18+-+Maroon+5+-+Animals+(Live+In+Manchester).mp3")
#  m19= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.19+-+Maroon+5+-+Daylight+(Live+In+Manchester).mp3")
#  m20= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.20+-+Maroon+5+-+Maps+(Live+In+Manchester).mp3")
#  m21= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/1.21+-+Maroon+5+-+This+Love+(Live+In+Manchester).mp3")

#  Song.create(title: "Best 4 U", album_id: M5.id ).track.attach(io: m01, filename: "1.01 - Maroon 5 - Best 4 U.mp3")
#  Song.create(title: "What Lover Do", album_id: M5.id ).track.attach(io: m02, filename: "	.02 - Maroon 5 - What Lovers Do (feat. SZA).mp3")
#  Song.create(title: "Wait", album_id: M5.id ).track.attach(io: m03, filename: "1.03 - Maroon 5 - Wait.mp3")
#  Song.create(title: "Lips on You", album_id: M5.id ).track.attach(io: m04, filename: "1.04 - Maroon 5 - Lips On You.mp3")
#  Song.create(title: "Bet My Heart", album_id: M5.id ).track.attach(io: m05, filename: "1.05 - Maroon 5 - Bet My Heart.mp3")
#  Song.create(title: "Help Me OUt", album_id: M5.id ).track.attach(io: m06, filename: "1.06 - Maroon 5 & Julia Michaels - Help Me Out.mp3")
#  Song.create(title: "Who I Am", album_id: M5.id ).track.attach(io: m07, filename: "1.07 - Maroon 5 - Who I Am (feat. Lunchmoney Lewis).mp3")
#  Song.create(title: "Whiskey", album_id: M5.id ).track.attach(io: m08, filename: "1.08 - Maroon 5 - Whiskey (feat. A$AP Rocky).mp3")
#  Song.create(title: "Girls Like You", album_id: M5.id ).track.attach(io: m09, filename: "1.09 - Maroon 5 - Girls Like You.mp3")
#  Song.create(title: "Closure", album_id: M5.id ).track.attach(io: m10, filename: "1.10 - Maroon 5 - Closure.mp3")
#  Song.create(title: "Denim Jacket", album_id: M5.id ).track.attach(io: m11, filename: "1.11 - Maroon 5 - Denim Jacket.mp3")
#  Song.create(title: "Visions", album_id: M5.id ).track.attach(io: m12, filename: "1.12 - Maroon 5 - Visions.mp3")
#  Song.create(title: "Plastic Rose", album_id: M5.id ).track.attach(io: m13, filename: "1.13 - Maroon 5 - Plastic Rose.mp3")
#  Song.create(title: "Don't Wanna Know", album_id: M5.id ).track.attach(io: m14, filename: "1.14 - Maroon 5 - Don't Wanna Know (feat. Kendrick Lamar).mp3")
#  Song.create(title: "Cold", album_id: M5.id ).track.attach(io: m15, filename: "1.15 - Maroon 5 - Cold (feat. Future).mp3")
#  Song.create(title: "Moves Like Jagger (live)", album_id: M5.id ).track.attach(io: m16, filename: "1.16 - Maroon 5 - Moves Like Jagger (Live In Manchester).mp3")
#  Song.create(title: "Stereo Hearts (live)", album_id: M5.id ).track.attach(io: m17, filename: "1.17 - Maroon 5 - Stereo Hearts (Live In Manchester).mp3")
#  Song.create(title: "Animals (live)", album_id: M5.id ).track.attach(io: m18, filename: "1.18 - Maroon 5 - Animals (Live In Manchester).mp3")
#  Song.create(title: "Daylight (live)", album_id: M5.id ).track.attach(io: m19, filename: "1.19 - Maroon 5 - Daylight (Live In Manchester).mp3")
#  Song.create(title: "Maps (live)", album_id: M5.id ).track.attach(io: m20, filename: "1.20 - Maroon 5 - Maps (Live In Manchester).mp3")
#  Song.create(title: "This Love (live)", album_id: M5.id ).track.attach(io: m21, filename: "1.21 - Maroon 5 - This Love (Live In Manchester).mp3")


#   sleep(30)


# M5ocover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/overexposed.jpg')
# Album.create(title: "Overexposed", artist_id: 6).album_cover.attach(io: M5ocover, filename: 'Cover.jpg' )
# M5o = Album.find_by(title: "Overexposed")

#  m01= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/01+One+More+Night.mp3")
#  m02= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/02+Payphone+(feat.+Wiz+Khalifa).mp3")
#  m03= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/03+Daylight.mp3")
#  m04= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/04+Lucky+Strike.mp3")
#  m05= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/05+The+Man+Who+Never+Lied.mp3")
#  m06= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/06+Love+Somebody.mp3")
#  m07= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/07+Ladykiller.mp3")
#  m08= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/08+Fortune+Teller.mp3")
#  m09= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/09+Sad.mp3")
#  m10= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/10+Tickets.mp3")
#  m11= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/11+Doin'+Dirt.mp3")
#  m12= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/12+Beautiful+Goodbye.mp3")
#  m13= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/13+Wipe+Your+Eyes.mp3")
#  m14= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/14+Wasted+Years.mp3")
#  m15= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Maroon5/Overexposed/15+Kiss.mp3")

#   Song.create(title: "One More Night", album_id: M5o.id ).track.attach(io: m01, filename: "01 One More Night.mp3")
#   Song.create(title: "Payphone", album_id: M5o.id ).track.attach(io: m02, filename: "02 Payphone (feat. Wiz Khalifa).mp3")
#   Song.create(title: "Daylight", album_id: M5o.id ).track.attach(io: m03, filename: "03 Daylight.mp3")
#   Song.create(title: "Lucky Strike", album_id: M5o.id ).track.attach(io: m04, filename: "04 Lucky Strike.mp3")
#   Song.create(title: "The Man Who Never Lied", album_id: M5o.id ).track.attach(io: m05, filename: "05 The Man Who Never Lied.mp3")
#   Song.create(title: "Love Somebody", album_id: M5o.id ).track.attach(io: m06, filename: "06 Love Somebody.mp3")
#   Song.create(title: "Ladykiller", album_id: M5o.id ).track.attach(io: m07, filename: "07 Ladykiller.mp3")
#   Song.create(title: "Fortune Teller", album_id: M5o.id ).track.attach(io: m08, filename: "08 Fortune Teller.mp3")
#   Song.create(title: "Sad", album_id: M5o.id ).track.attach(io: m09, filename: "09 Sad.mp3")
#   Song.create(title: "Tickets", album_id: M5o.id ).track.attach(io: m10, filename: "10 Tickets.mp3")
#   Song.create(title: "Doin Dirt", album_id: M5o.id ).track.attach(io: m11, filename: "11 Doin' Dirt.mp3")
#   Song.create(title: "Beautiful Goodbye", album_id: M5o.id ).track.attach(io: m12, filename: "12 Beautiful Goodbye.mp3")
#   Song.create(title: "Wipe Your Eyes", album_id: M5o.id ).track.attach(io: m13, filename: "13 Wipe Your Eyes.mp3 ")
#   Song.create(title: "Wasted Years", album_id: M5o.id ).track.attach(io: m14, filename: "14 Wasted Years.mp3")
#   Song.create(title: "Kiss", album_id: M5o.id ).track.attach(io: m15, filename: "15 Kiss.mp3 ")



# # LINE BREAK FOR HEROKU BEING STUPID AND HAVING A SHORT ATTENTION SPAN

# LaLaLandCover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/La_La_Land_cover.jpg')
# Album.create(title: "La La Land Soundtrack", artist_id: 1).album_cover.attach(io: LaLaLandCover, filename: 'La_La_Land_cover.jpg' )
# LLL = Album.find_by(title: "La La Land Soundtrack")


# m01= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/A_Lovely_Night.m4a")
# m02= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Another_Day_of_Sun.m4a")
# m03= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Audition.m4a")
# m04= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/City+Of+Stars+(Humming).m4a")
# m05= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/City+Of+Stars+(Ryan+Gosling).m4a")
# m06= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/City_of_Stars.m4a")
# m07= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Engagement+Party.m4a")
# m08= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Epilogue.m4a")
# m09= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Herman%E2%80%99s+Habit.m4a")
# m10= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Mia+%26+Sebastian%E2%80%99s+Theme.m4a")
# m11= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Planetarium.m4a")
# m12= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Someone_In_The_Crowd.m4a")
# m13= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Start_a_Fire.m4a")
# m14= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/Summer+Montage++Madeline.m4a")
# m15= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/lalaLand/The+End.m4a")

# Song.create(title: "A Lovely Night", album_id: LLL.id ).track.attach(io: m01, filename: "A_Lovely_Night.m4a")
# Song.create(title: "Another Day Of Sun", album_id: LLL.id ).track.attach(io: m02, filename: "Another_Day_of_Sun.m4a")
# Song.create(title: "Audition", album_id: LLL.id ).track.attach(io: m03, filename: "Audition.m4a")
# Song.create(title: "City of Stars (humming)", album_id: LLL.id ).track.attach(io: m04, filename: "City Of Stars (Humming).m4a")
# Song.create(title: "City of Stars(Ryan Gosling)", album_id: LLL.id ).track.attach(io: m05, filename: "City Of Stars (Ryan Gosling).m4a")
# Song.create(title: "City of Stars", album_id: LLL.id ).track.attach(io: m06, filename: "City_of_Stars.m4a")
# Song.create(title: "Engagement Part", album_id: LLL.id ).track.attach(io: m07, filename: "Engagement Party.m4a")
# Song.create(title: "Epilogue", album_id: LLL.id ).track.attach(io: m08, filename: "Epilogue.m4a")
# Song.create(title: "Herman's Habit", album_id: LLL.id ).track.attach(io: m09, filename: "Herman’s Habit.m4a ")
# Song.create(title: "Mia & Sebastian's Theme", album_id: LLL.id ).track.attach(io: m10, filename: "Mia & Sebastian’s Theme.m4a")
# Song.create(title: "Planetarium", album_id: LLL.id ).track.attach(io: m11, filename: "Planetarium.m4a")
# Song.create(title: "Someone in the Crowd", album_id: LLL.id ).track.attach(io: m12, filename: "Someone_In_The_Crowd.m4a")
# Song.create(title: "Start a Fire", album_id: LLL.id ).track.attach(io: m13, filename: "Start_a_Fire.m4a")
# Song.create(title: "Summer Montage", album_id: LLL.id ).track.attach(io: m14, filename: "Summer Montage Madeline.m4a")
# Song.create(title: "The End", album_id: LLL.id ).track.attach(io: m15, filename: "The End.m4a")


# ColorShapeCover = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/color_shape.png')
# Album.create(title: "The Color and the Shape", artist_id: 7).album_cover.attach(io: ColorShapeCover, filename: 'color_shape.png' )
# LLL = Album.find_by(title: "The Color and the Shape")

# m01= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/01+-+Doll.mp3")
# m02= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/02+-+Monkey+Wrench.mp3")
# m03= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/03+-+Hey%2C+Johnny+Park!.mp3")
# m04= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/04+-+My+Poor+Brain.mp3")
# m05= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/05+-+Wind+Up.mp3")
# m06= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/06+-+Up+in+Arms.mp3")
# m07= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/07+-+My+Hero.mp3")
# m08= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/08+-+See+You.mp3")
# m09= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/09+-+Enough+Space.mp3")
# m10= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/10+-+February+Stars.mp3")
# m11= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/11+-+Everlong.mp3")
# m12= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/12+-+Walking+After+You.mp3")
# m13= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/foo+fighters/13+-+New+Way+Home.mp3")

# Song.create(title: "Doll", album_id: LLL.id ).track.attach(io: m01, filename: "01 - Doll.mp3")
# Song.create(title: "Moneky Wrench", album_id: LLL.id ).track.attach(io: m02, filename: "02 - Monkey Wrench.mp3")
# Song.create(title: "Hey  Jonny Park!", album_id: LLL.id ).track.attach(io: m03, filename: "03 - Hey, Johnny Park!.mp3")
# Song.create(title: "My Poor Brain", album_id: LLL.id ).track.attach(io: m04, filename: "04 - My Poor Brain.mp3 Download Copy path ")
# Song.create(title: "Wind Up", album_id: LLL.id ).track.attach(io: m05, filename: "05 - Wind Up.mp3")
# Song.create(title: "Up in Arms", album_id: LLL.id ).track.attach(io: m06, filename: "06 - Up in Arms.mp3")
# Song.create(title: "My Hero", album_id: LLL.id ).track.attach(io: m07, filename: "07 - My Hero.mp3 Download Copy path")
# Song.create(title: "See You", album_id: LLL.id ).track.attach(io: m08, filename: "08 - See You.mp3")
# Song.create(title: "Enough Space", album_id: LLL.id ).track.attach(io: m09, filename: "09 - Enough Space.mp3")
# Song.create(title: "February Stars", album_id: LLL.id ).track.attach(io: m10, filename: "10 - February Stars.mp3")
# Song.create(title: "Everlong", album_id: LLL.id ).track.attach(io: m11, filename: "11 - Everlong.mp3")
# Song.create(title: "Walking After You", album_id: LLL.id ).track.attach(io: m12, filename: "12 - Walking After You.mp3")
# Song.create(title: "New Way Home", album_id: LLL.id ).track.attach(io: m13, filename: "13 - New Way Home.mp3")



# BGHC = EzDownload.open('https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/beatlesCover.jpg')
# Album.create(title: "Beatles Greatest Hits", artist_id: 8).album_cover.attach(io: BGHC, filename: 'beatlesCover.jpg' )
# BGH = Album.find_by(title: "Beatles Greatest Hits")

# m01= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/01+come+together.mp3")
# m02= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/02+drive+my+car.mp3")
# m03= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/03+help!.mp3")
# m04= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/04+i+saw+her+standing+there.mp3")
# m05= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/05+magical+mystery+tour.mp3")
# m06= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/06+no+reply.mp3")
# m07= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/07+all+my+loving.mp3")
# m08= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/08+rock+and+roll+music.mp3")
# m09= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/09+and+i+love+her.mp3")
# m10= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/10+all+you+need+is+love.mp3")
# m11= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/11+i+am+the+walrus.mp3")
# m12= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/12+yellow+subarine.mp3")
# m13= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/13+your+going+to+lose+that+girl.mp3")
# m14= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/14+can't+buy+me+love.mp3")
# m15= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/15+hello+goodbye.mp3")
# m16= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/17+ticket+to+ride.mp3")
# m17= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/18+eight+days+a+week.mp3")
# m18= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/18+eight+days+a+week.mp3")
# m19= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/19+love+me+do.mp3")
# m20= EzDownload.open("https://s3-us-west-1.amazonaws.com/dotify-song-dev/Beatles/20+strawberry+fields+forever.mp3")

# Song.create(title: "Come Together", album_id: BGH.id ).track.attach(io: m01, filename: "01 come together.mp3")
# Song.create(title: "Drive My Car", album_id: BGH.id ).track.attach(io: m02, filename: "02 drive my car.mp3")
# Song.create(title: "Help!", album_id: BGH.id ).track.attach(io: m03, filename: "03 help!.mp3")
# Song.create(title: "I saw her Standing There", album_id: BGH.id ).track.attach(io: m04, filename: "04 i saw her standing there.mp3")
# Song.create(title: "magical ,mystery tour", album_id: BGH.id ).track.attach(io: m05, filename: "05 magical mystery tour.mp3")
# Song.create(title: "No Reply", album_id: BGH.id ).track.attach(io: m06, filename: "06 no reply.mp3")
# Song.create(title: "All My Love", album_id: BGH.id ).track.attach(io: m07, filename: "07 all my loving.mp3")
# Song.create(title: "Rock and Roll Music", album_id: BGH.id ).track.attach(io: m08, filename: "08 rock and roll music.mp3")
# Song.create(title: "And I Love Her", album_id: BGH.id ).track.attach(io: m09, filename: "09 and i love her.mp3")
# Song.create(title: "All You Need is Love", album_id: BGH.id ).track.attach(io: m10, filename: "10 all you need is love.mp3")
# Song.create(title: "I am The Walrus", album_id: BGH.id ).track.attach(io: m11, filename: "11 i am the walrus.mp3")
# Song.create(title: "Yellow Submarine", album_id: BGH.id ).track.attach(io: m12, filename: "12 yellow subarine.mp3")
# Song.create(title: "You're Going to Lose That Girl", album_id: BGH.id ).track.attach(io: m13, filename: "13 your going to lose that girl.mp3")
# Song.create(title: "Cant Buy Me Love", album_id: BGH.id ).track.attach(io: m14, filename: "14 can't buy me love.mp3")
# Song.create(title: "Hello Goodbye", album_id: BGH.id ).track.attach(io: m15, filename: "15 hello goodbye.mp3")
# Song.create(title: "Here Comes The Sun", album_id: BGH.id ).track.attach(io: m16, filename: "16 here comes the sun.mp3")
# Song.create(title: "Ticket To Ride", album_id: BGH.id ).track.attach(io: m17, filename: "17 ticket to ride.mp3")
# Song.create(title: "Eight Days a Week", album_id: BGH.id ).track.attach(io: m18, filename: "18 eight days a week.mp3")
# Song.create(title: "Love Me Do", album_id: BGH.id ).track.attach(io: m19, filename: "19 love me do.mp3")
# Song.create(title: "Straberry Fields Forever", album_id: BGH.id ).track.attach(io: m20, filename: "20 strawberry fields forever.mp3")


# PlaylistSong.create(playlist_id: Playlist.find_by(name: "New Playlist").id, song_id: Song.find_by(title: "Moneky Wrench"))
# PlaylistSong.create(playlist_id: Playlist.find_by(name: "New Playlist").id, song_id: Song.find_by(title: "I am The Walrus"))
# PlaylistSong.create(playlist_id: Playlist.find_by(name: "New Playlist").id, song_id: Song.find_by(title: "Another Day Of Sun"))
# PlaylistSong.create(playlist_id: Playlist.find_by(name: "New Playlist").id, song_id: Song.find_by(title: "The Rock Show"))
# PlaylistSong.create(playlist_id: Playlist.find_by(name: "New Playlist").id, song_id: Song.find_by(title: "You Will Be Found"))

# PlaylistSong.create(playlist_id: Playlist.find_by(name: "fun songs").id, song_id: Song.find_by(title: "Start a Fire").id)
# PlaylistSong.create(playlist_id: Playlist.find_by(name: "My 2nd playlist!").id, song_id: Song.find_by(title: "The Promised Land").id)

# Artist.create(name: "Billy Joel")


Artist.create(name: "Blink 182")
Artist.create(name: "Cast of Dear Evan Hanson")
Artist.create(name: "Bruce Springsteen")
Artist.create(name: "Matchbox Twenty")
Artist.create(name: "Maroon 5")
Artist.create(name: "Cast of La La Land")
Artist.create(name: "Foo Fighters")
Artist.create(name: "The Beatles")

album = Album.where(title: "Dear Evan Hanson").first
artist = Artist.where(name: "Cast of Dear Evan Hanson").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "Greatest Hits").first
artist = Artist.where(name: "Billy Joel").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "Blink 182 Greatest Hits").first
artist = Artist.where(name: "Blink 182").first
album.artist_id = artist.id
album.save!


album = Album.where(title: "1973").first
artist = Artist.where(name: "Bruce Springsteen").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "Exile on Mainstream").first
artist = Artist.where(name: "Matchbox Twenty").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "Red Pill Blues").first
artist = Artist.where(name: "Maroon 5").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "Overexposed").first
artist = Artist.where(name: "Maroon 5").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "La La Land Soundtrack").first
artist = Artist.where(name: "Cast of La La Land").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "The Color and the Shape").first
artist = Artist.where(name: "Foo Fighters").first
album.artist_id = artist.id
album.save!

album = Album.where(title: "Beatles Greatest Hits").first
artist = Artist.where(name: "The Beatles").first
album.artist_id = artist.id
album.save!

