import React from 'react';
import ReactPlayer from 'react-player';
import Modal from "react-modal";



class AlbumShowComponent extends React.Component{
  constructor(props){
    super(props);

    this.updateCurrentSong = this.updateCurrentSong.bind(this);
    this.updateMusic = this.updateMusic.bind(this);
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.state ={
      modalIsOpen: false,
      songToAdd: null
    }
  }

  componentDidMount(){
    console.log("hitting CDM");
    this.props.fetchAlbum(this.props.match.params.albumID);
    this.props.fetchPlaylists()

  }



  updateSongCollection(collection){
    this.props.updateCollection(collection);
    console.log("updating collection");
  }

  updateCurrentSong(song){
    this.props.updateCurrentSong(song);
    console.log("updating Song");
  }

  updateMusic(e, collection, song){
    e.preventDefault();
    this.updateCurrentSong(song);
    this.updateSongCollection(collection);
  }

  dropdownAppear(song){
    var open = document.getElementsByClassName("add-to-playlist-button-vis")
    this.setState({songToAdd: song})
    if (open.length > 0) {
      open[0].className ="add-to-playlist-button-hidden"
    }


    console.log("make something appear")
    console.log(song.title)
    var x = document.getElementById(song.title)
    console.log(x)
    // console.log(x.className)
    x.className = "add-to-playlist-button-vis"
    // x.classList.remove = "add-to-playlist-button-hidden"
    console.log(x)
  }

  openModal() {
    this.setState({ modalIsOpen: true });
  }
  closeModal() {
    this.setState({ modalIsOpen: false });
  }

  handleAddSong(e, playlistId, songId){
    // debugger
    // not yet mapped to state, so this dones't work yet.
    this.props.createPlaylistSong(playlistId, songId)
  }


  render(){
    if (this.props.album === undefined) return <div>wrong</div>;
    
    const playlists = this.props.playlists.map(playlist => {
      console.log("album info:", playlist.name, playlist.id);
      return <div className="album">
          <button onClick={e => {
              this.handleAddSong(e, playlist.id, this.state.songToAdd.id);
            }} className="album-index-album">
            <div className="album-images">
              <img className="demo-image" src={playlist.playlist_cover} />
              {/* <img className="play-modal" src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/icons/plus.png"></img> */}
            </div>
          </button>

          <button onClick={e => {
              this.handleAddSong(e, playlist.id, song.id);
            }} className="album-index-title">
            {playlist.title}
          </button>
        </div>;
    });

    const songs = this.props.songs.map( song => {
      return <div>
          <li className="song">
            <img className="play-icon" src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />
            {/* <img className="play-icon" src="https://cdn0.iconfinder.com/data/icons/education-vol-2-21/512/5_Eighth_eighth_note_music_note-512.png" /> */}

            <button className="music-note-button" onClick={e => {
                this.updateMusic(e, { album: this.props.album, songs: this.props.songs }, song);
              }}>
              <div className="note-play-icon-group">
                <img className="small-play" src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />
                <img className="music-note" src="https://www.clipartsfree.net/vector/small/79345-white-music-note-icon.png" />
              </div>
            </button>
            {song.title}
            <div className="dropdown-click">
              <button className="ellipsis" onClick={e => this.dropdownAppear( song)}>
                <img className="dotdotdot-icon" src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/icons/white+dot.png" />
                <img className="dotdotdot-icon" src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/icons/white+dot.png" />
                <img className="dotdotdot-icon" src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/icons/white+dot.png" />
              </button>
             
              <div>
                <button id={song.title} className="add-to-playlist-button-hidden" onClick={this.openModal}>
                  Add to Playlist
                </button>
              </div>
            </div>
          </li>
        </div>;
    }
  );



    return <div>
        <div className="album-show-component">
          <div className="cover-and-info">
            <img className="album-cover" src={this.props.album.album_cover} />

            <h1 className="album-title">{this.props.album.title}</h1>

            <button className="play-button">play</button>
          </div>
          <div className="song-list">
            <ul>{songs}</ul>
          </div>
        </div>

        {/* <Modal className="add-song-modal" overlayClassName="Overlay" isOpen={this.state.modalIsOpen}>
          <div className="playlists-modal-title">
            <button className="x-button" onClick={this.closeModal}>
              X
            </button> <br />
            Add to Playlist <br />
            <button className="create-button" onClick={this.createPlaylist}>
              CREATE
            </button>
            </div>
            <div className="playlists-modal-content">{playlists}</div>
        </Modal> */}
      </div>;
    }
  }
  export default AlbumShowComponent;
