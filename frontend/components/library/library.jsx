import React from 'react';
import Modal from 'react-modal';


// Modal.setAppElement("#root");

class libraryComponent extends React.Component {
    constructor(props) {
        super(props);
        this.playToggle = this.playToggle.bind(this);
        this.updateSong = this.updateSong.bind(this);
        // this.handleGoAlbum = this.handleGoAlbum.bind(this);
        this.currentSong = "";
        this.state = {
            currentSong: '',
            playing: false,
            modalIsOpen: false,
            playlistName: ""
        };
        this.openModal = this.openModal.bind(this);
        this.closeModal = this.closeModal.bind(this);
        this.updatePlaylistName = this.updatePlaylistName.bind(this)
        this.createPlaylist = this.createPlaylist.bind(this)

    }

    componentDidMount() {
        // this.props.fetchSongs();
        // this.props.fetchAlbums();
        this.props.fetchPlaylists()
    }


    updateSong(e, song) {
        e.preventDefault();
        this.setState({
            playing: true,
            currentSong: song.track
        });
    }

    // not updated for playlists yet
    updateSongCollection(e, collection, playlistID) {
        e.preventDefault();
        //UPDATE STORE HERE
        this.props.updateCollection(playlistID);
        this.props.history.push(`/playlists/${playlistID}`);
    }


    handleGoPlaylist(e, PlaylistID) {
        e.preventDefault();
        this.props.history.push(`/playlists/${PlaylistID}`);
    }



    playToggle() {
        if (this.state.playing === false) this.setState({ playing: true });
        if (this.state.playing === true) this.setState({ playing: false });
    }

    openModal() {
        this.setState({ modalIsOpen: true });
    }
    closeModal() {
        this.setState({ modalIsOpen: false });
    }

    updatePlaylistName(e){
        this.setState({ playlistName: e.target.value });
    }

    createPlaylist(){
        //do stuff to send it to the backend
        this.props.createPlaylist({name: this.state.playlistName})
        this.props.fetchPlaylists()

        this.closeModal();
    }


    render() {



        const playlists = this.props.playlists.map(playlist => {
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
              <button className="newPlaylist" onClick={this.openModal}>NEW PLAYLIST</button>
            </div>


            <ul className="album-list"> {playlists}</ul>


            <Modal className="create-playlist-modal" 
            overlayClassName="Overlay"
             isOpen={this.state.modalIsOpen} >
            
                <div className="create-playlist-modal-content" 
>
                <button className="x-button" onClick={this.closeModal}>X</button> <br/>
                Create new Playlist <br/>
                    <input onChange={(e) => { this.updatePlaylistName(e); }} type="text" placeholder="Start Typing..."/>
                <button className="create-button" onClick={this.createPlaylist}>CREATE</button>

            </div>
            </Modal>
          </div>;
    }
}

export default libraryComponent;