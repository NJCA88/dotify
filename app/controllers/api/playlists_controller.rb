class Api::PlaylistsController < ApplicationController

    require 'byebug'
    def index
        @playlists = Playlist.where(user_id: current_user.id)
        render 'index'
    end

    def show
        @playlist = Playlist.find(params[:id])
        # debugger
        render 'show'
    end

    # def new
    #     @playlist = Playlist.new
    # end

    def create
    @playlist = Playlist.new(playlist_params)
    @playlist.user_id = current_user.id
    # @playlist.name = params[:name]
    unless @playlist.save
      flash.now[:errors] = @playlist.errors.full_messages
    end
    @playlists = Playlist.where(user_id: current_user.id)
    render 'index'

    end

    def update
    end

    def delete
    end


    private

    def playlist_params
        params.require(:playlist).permit(:name )
    end
end