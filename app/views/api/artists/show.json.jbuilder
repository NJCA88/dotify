
  @albums.each do |album|
  json.set! album.id do
    json.id album.id
    json.artist_id album.artist_id
    json.title album.title
    json.album_cover url_for(album.album_cover)
  end

  # json.songs do
  #   json.array!(album.songs) do |song|
  #     json.extract! song, :title
  #   end
  # end
end
#
# json.albums do
#  @albums.each do |album|
#    json.set! album.id do
#      json.extract! album, :id, :artist_id, :title
#      json.album_cover url_for(album.album_cover)
#    end
#  end
# end
