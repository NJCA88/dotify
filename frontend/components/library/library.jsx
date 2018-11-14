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
    // updateSongCollection(e, collection, playlistID) {
    //     e.preventDefault();
    //     //UPDATE STORE HERE
    //     this.props.updateCollection(AlbumID);
    //     console.log(collection);
    //     this.props.history.push(`/albums/${AlbumID}`);
    // }


    // handleGoAlbum(e, AlbumID) {
    //     e.preventDefault();
    //     this.props.history.push(`/albums/${AlbumID}`);
    // }




    playToggle() {
        if (this.state.playing === false) this.setState({ playing: true });
        if (this.state.playing === true) this.setState({ playing: false });
        console.log(this.state.playing);
    }


    render() {



        const albums = this.props.playlists.map(playlist => {
            console.log("album info:", playlist.name, playlist.id);
            return (
                <div className="album">

                    <button
                        // onClick={(e) => { this.updateSongCollection(e, album, album.id); }}
                        className="album-index-album">
                        <img className="demo-image" src={playlist.playlist_cover} />
                    </button>

                    <button
                        // onClick={(e) => { this.handleGoAlbum(e, album.id); }}
                        className="album-index-title" >

                        {playlist.title}
                    </button>
                </div>
            );
        });


        return (
            <div className="home">
                <h1> Some Playlists</h1>
                <ul className="album-list"> {albums}</ul>
            </div>
        );
    }
}

export default libraryComponent;