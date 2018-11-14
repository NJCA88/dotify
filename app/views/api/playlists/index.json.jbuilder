
  @playlists.each do |playlist|
  json.set! playlist.id do
    json.id playlist.id
    json.title playlist.name
    json.playlist_cover url_for(playlist.songs[0].album.album_cover)
  end
  end