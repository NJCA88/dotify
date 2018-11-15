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

    def create
    end

    def update
    end

    def delete
    end


    private

    # def user_params
    #     params.require(:playlist).permit(:name, :user )
    # end
end