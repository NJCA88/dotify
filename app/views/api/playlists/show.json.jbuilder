json.playlist do
  json.extract! @playlist, :name, :id
    if @playlist.songs.length == 0
      json.playlist_cover url_for(Album.find_by(title: "Dear Evan Hanson").songs[0].album.album_cover)
    else
      json.playlist_cover url_for(@playlist.songs[0].album.album_cover)
    end
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
