class SearchResultSerializer < BaseSerializer
  # attributes :songs, :albums, :playlists, :artists
  attributes :songs, :albums, :playlists
  # attributes :albums
  # attributes :albums
  def songs
    songs = []
    return songs if !self.object.songs 

    self.object.songs.each do |song|
      # songs[song.title] = url_for(song.track)
      # songs[song.title] = ["title": song.title, "track": url_for(song.track), "art": url_for(song.album.album_cover)]
      songs.push("title": song.title, "track": url_for(song.track), "art": url_for(song.album.album_cover))
    end
    songs
  end

  def albums
    albums = []
    return albums if !self.object.albums 
    self.object.albums.each do |album|
      # albums[album.title] = album.title, url_for(album.album_cover)
      albums.push("id": album.id, "title": album.title, "album_cover": url_for(album.album_cover) )
    end
    albums
  end
  

  def playlists
    playlists = {}
    return playlists if !self.object.playlists 
    self.object.playlists.each do |playlist|
      playlists[playlist.name] = playlist.name, url_for(playlist.songs.first.album.album_cover)
    end
    playlists
  end

  def artists
    artists = {}
    return artists if !self.object.artists 
      self.object.artists.each do |artist|
        artists[artist.name] = artist.name
    end
    artists
  end

end
