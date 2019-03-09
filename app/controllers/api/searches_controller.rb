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


    # @Song = Song.where(title: params[:search])[0]
    # p "song? : ", @Song
    # p "url is : ", url_for(@Song.track)
    # render json: @Song, status: 200

    song = Song.where(title: "Only Us")[0]
    album = Album.where(title: "Dear Evan Hanson")[0]
    @search_result = SearchResult.new(song, album)
    # debugger
    # render SearchSerializer.new(@search_result).to_json
    render json: @search_result

    # render 'index'
  end
end


class SearchResult
    attr_accessor :song, :album
    def initialize(song, album)
        @song = song
        @album = album
        # @album_title = album.title
    end
end
