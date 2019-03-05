  @Albums.each do |album|
  json.set! album.id do
    json.id album.id
    json.title album.title
  end

end

