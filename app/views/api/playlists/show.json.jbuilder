json.playlist do
  json.extract! @playlist, :name, :id
  json.playlist_cover url_for(@playlist.songs[0].album.album_cover)
end

json.songs do
  @playlist.songs.each do |song|
    json.set! song.id do
      json.id song.id
      json.title song.title
      json.track url_for(song.track)
    end
  end
end
