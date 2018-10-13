class Api::SongsController < ApplicationController

  def index
    @songs = Song.all
    p "TESTING STARTS HERE"
    p url_for(Song.find(3).track)
    # p"TESTS~~~~~~~~~~~~~~~~
    p "TESTING ends HERE"

    render 'show'
  end

end
