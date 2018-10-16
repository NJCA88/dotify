class Api::AlbumsController < ApplicationController

  def index
    @albums = Album.all
    render 'show'
  end

end
