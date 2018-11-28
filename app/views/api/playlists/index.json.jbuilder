
  @playlists.each do |playlist|
  json.set! playlist.id do
    json.id playlist.id
    json.title playlist.name
    if playlist.songs.length == 0
      json.playlist_cover url_for(Album.find_by(title: "Dear Evan Hanson").songs[0].album.album_cover)
    else
      json.playlist_cover url_for(playlist.songs[0].album.album_cover)
    end
  end
  end