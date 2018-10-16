json.array!(@albums) do |album|
  json.artist_id album.artist_id
  json.title album.title
  json.album_cover url_for(album.album_cover)
  # json.songs do
  #   json.array!(album.songs) do |song|
  #     json.extract! song, :title
  #   end
  # end
end
