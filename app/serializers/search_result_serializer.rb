class SearchResultSerializer < ActiveModel::Serializer
  attributes :album, :song
  def album
    debugger
    self.object.album.title
  end
  def song
    self.object.song.title
  end
end
