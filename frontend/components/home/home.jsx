import React from 'react';
import ReactPlayer from 'react-player';


class HomeComponent extends React.Component{
  constructor(props){
    super(props);
    this.playToggle = this.playToggle.bind(this);
    this.updateSong = this.updateSong.bind(this);
    this.handleGoAlbum = this.handleGoAlbum.bind(this);
    this.currentSong = "";
    this.state = {
      currentSong: '',
      playing: false
    };
  }

  componentDidMount() {
    this.props.fetchSongs();
    this.props.fetchAlbums();
  }


  updateSong(e, song){
    e.preventDefault();
    console.log(this.state);
    // console.log(song.title);
    this.setState( {
      playing:  true,
      currentSong: song.track
    // console.log(this.playing);
    });
  }

  updateSongCollection(e, collection, AlbumID){
    e.preventDefault();
    //UPDATE STORE HERE
    this.props.updateCollection(AlbumID);
    console.log("updating collection to be: ", collection);
    this.props.history.push(`/albums/${AlbumID}`);
  }


  handleGoAlbum(e, AlbumID){
    e.preventDefault();
    this.props.history.push(`/albums/${AlbumID}`);
  }




playToggle() {
  if (this.state.playing === false) this.setState({playing: true});
  if (this.state.playing === true) this.setState({playing: false});
  console.log(this.state.playing);
}


  render(){



  const albums = this.props.albums.map(album => {
    console.log("album info:", album.title, album.id);
  return <div className="album">
      <button onClick={e => {
          this.updateSongCollection(e, album, album.id);
        }} className="album-index-album">
        <div className="album-images">
          <img className="demo-image" src={album.album_cover} />
          {/* <img className="play-modal" src="https://mbtskoudsalg.com/images/white-play-button-png-5.png"></img> */}
        </div>
      </button>

      <button onClick={e => {
          this.handleGoAlbum(e, album.id);
        }} className="album-index-title">
        {album.title}
      </button>
    </div>;
});


  return (
    <div className="home">
      <h1> Made For You</h1>
        <ul className="album-list"> {albums}</ul>
    </div>
    );
  }
}

export default HomeComponent;
