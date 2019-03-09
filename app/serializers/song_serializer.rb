class SongSerializer < BaseSerializer
  attributes :id, :title, :url

  def url
    debugger
    url_for(self.object.track)
  end
end