class Api::PlaylistSongsController < ApplicationController
    def create
        
        @playlist_song = PlaylistSong.new(playlist_params)

        unless @playlist_song.save
            flash.now[:errors] = @playlist_song.errors.full_messages
        end

    end


    def delete
    end


    private
    def playlist_params
        # 
        params.require(:playlistSong).permit(:song_id, :playlist_id )
    end
end
