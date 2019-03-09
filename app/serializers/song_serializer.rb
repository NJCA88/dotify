class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :url

  def url
    debugger
    url_for(self.object.track)
  end
end
