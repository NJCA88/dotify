json.array!(@songs) do |song|
  json.album_id song.album_id
  json.title song.title
  json.track url_for(song.track)
end
