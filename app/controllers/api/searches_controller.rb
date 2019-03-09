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
    @Albums = Album.all
    search_string = request.body.read

    # artist = Artist.where(name: params[:search])
    # album = Album.where(title: params[:search])
    @Song = Song.where(title: params[:search])[0]
    p "song? : ", @Song
    p "url is : ", url_for(@Song.track)
    # debugger
    render json: @Song, status: 200
    # debugger

    # p "artist? : ", artist
    # p "album? : ", album



    # @Albums = []


    render 'index'
  end
end
