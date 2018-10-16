class Api::SongsController < ApplicationController

  def index
    @songs = Song.all
    render 'show'
  end

end
