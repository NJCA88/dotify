import React from 'react';
import ReactPlayer from 'react-player';


class libraryComponent extends React.Component {
    constructor(props) {
        super(props);
        this.playToggle = this.playToggle.bind(this);
        this.updateSong = this.updateSong.bind(this);
        // this.handleGoAlbum = this.handleGoAlbum.bind(this);
        this.currentSong = "";
        this.state = {
            currentSong: '',
            playing: false
        };
    }

    componentDidMount() {
        // this.props.fetchSongs();
        // this.props.fetchAlbums();
        console.log("yep, we're on the library")
        this.props.fetchPlaylists()
        console.log("this.props.playlists is: ", this.props.playlists)
        console.log("we fetched them, we think.")
    }


    updateSong(e, song) {
        e.preventDefault();
        console.log(this.state);
        // console.log(song.title);
        this.setState({
            playing: true,
            currentSong: song.track
            // console.log(this.playing);
        });
    }

    // not updated for playlists yet
    updateSongCollection(e, collection, playlistID) {
        e.preventDefault();
        //UPDATE STORE HERE
        this.props.updateCollection(playlistID);
        console.log("updating collection to be: ", collection);
        this.props.history.push(`/playlists/${playlistID}`);
    }


    handleGoPlaylist(e, PlaylistID) {
        e.preventDefault();
        console.log("going to playlist's show page")
        this.props.history.push(`/playlists/${PlaylistID}`);
    }




    playToggle() {
        if (this.state.playing === false) this.setState({ playing: true });
        if (this.state.playing === true) this.setState({ playing: false });
        console.log(this.state.playing);
    }


    render() {



        const playlists = this.props.playlists.map(playlist => {
            console.log("album info:", playlist.name, playlist.id);
            return (
                <div className="album">

                    <button
                        onClick={(e) => { this.updateSongCollection(e, playlist, playlist.id); }}
                        className="album-index-album">
                        <img className="demo-image" src={playlist.playlist_cover} />
                    </button>

                    <button
                        onClick={(e) => { this.handleGoPlaylist(e, playlist.id); }}
                        className="album-index-title" >

                        {playlist.title}
                    </button>
                </div>
            );
        });


        return <div className="home">
            <div className="library-header">
              <h1> Your Playlists</h1>
              <button className="newPlaylist">NEW PLAYLIST</button>
            </div>

            <ul className="album-list"> {playlists}</ul>
          </div>;
    }
}

export default libraryComponent;