class Api::PlaylistSongsController < ApplicationController


    require 'byebug'

    def create
        debugger
        @playlist_song = PlaylistSong.new(playlist_params)

        unless @playlist_song.save
            flash.now[:errors] = @playlist_song.errors.full_messages
        end

    end


    def delete
    end


    private
    def playlist_params
        # debugger
        params.require(:playlistSong).permit(:song_id, :playlist_id )
    end
end

#issues with what is getting passed back to the back end... its just coming back with "playlist => 30"