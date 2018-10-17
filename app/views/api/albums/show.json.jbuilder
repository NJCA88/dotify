
json.album do
  json.extract! @album, :title, :id
  json.album_cover url_for(@album.album_cover)
end

json.songs do
  @album.songs.each do |song|
    json.set! song.id do
      json.id song.id
      json.title song.title
      json.track url_for(song.track)
    end
  end
end
