json.array!(@albums) do |album|
  json.artist_id album.artist_id
  json.title album.title

  json.songs do
    json.array!(album.songs) do |song|
      json.extract! song, :title
    end
  end
end
