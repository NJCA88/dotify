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
    # search_string = request.body.read['search']
    search_string = params[:search]
    
    p "searching for: ", search_string
    # p "request.raw post is: ", request.raw_post
    # debugger
    songs = Song.where(title: search_string)
    albums = Album.where(title: search_string)
    # p "album is: ", albums
    artists = Artist.where(name: search_string)
    playlists = Playlist.where(name: search_string)
    p "PLAYLISTS ARE: ", playlists
    
    if albums.length > 0
        songs = []
        (0..5).each do |idx|
            songs.push( albums[0].songs[idx] )
        end
    
    elsif artists.length > 0
        songs = []
        (0..5).each do |idx|
            songs.push( artists[0].albums[0].songs[idx] )
        end
        albums = artists[0].albums
    elsif playlists.length > 0
        songs = [] 
        (0..5).each do |idx|
            p "doing a thing"
            songs.push( playlists[0].songs[idx] )
            break if idx+1 > playlists[0].songs.length
        end
        p "songs are now: ", songs
     elsif songs.length > 0
        songs_num = songs.length
        new_songs = []
        songs.each do |song|
            new_songs.push(song)
        end
        songs = new_songs
        (0...(5 - songs_num)).each do |idx|
            songs.push( songs[0].album.songs[idx] )
        end
        albums = [songs[0].album]
        artists = [songs[0].artist]
    end
    


    @search_result = SearchResult.new(songs, albums, artists, playlists)
    render json: @search_result

  end
end


class SearchResult
    attr_accessor :songs, :albums, :playlists, :artists
    def initialize(songs, albums, artists, playlists)
        @songs = songs
        @albums = albums
        @playlists = playlists
        @artists = artists
    end
end
