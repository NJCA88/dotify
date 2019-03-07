require 'byebug'
class Api::SearchesController < ApplicationController
    protect_from_forgery with: :null_session


  def index
    @Albums = Album.all
    debugger
    p "SEARCHING FOR BATMAN"
    render 'index'
  end

  def create
    # @Albums = Album.all
    search_string = request.body.read

    artist = Artist.where(name: params[:search])
    debugger


    # @Albums = []


    render 'index'
  end
end
