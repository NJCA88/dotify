import React from 'react';
import ReactPlayer from 'react-player';


class HomeComponent extends React.Component{
  constructor(props){
    super(props);
    this.playToggle = this.playToggle.bind(this);
    this.updateSong = this.updateSong.bind(this);
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

  updateSongCollection(e, collection){
    e.preventDefault();
    //UPDATE STORE HERE
    this.props.receiveCollection(collection);
    console.log(collection);
  }



playToggle() {
  if (this.state.playing === false) this.setState({playing: true});
  if (this.state.playing === true) this.setState({playing: false});
  console.log(this.state.playing);

  // <div className="player">
  //   <ReactPlayer
  //     url= {this.state.currentSong}
  //      playing = {this.state.playing}
  //     />
  // </div>
}

  render(){
    const songs = this.props.songs.map(song => {
    return (
      <div>
        <button
          onClick={(e) => {this.updateSong(e, song);}}
          id={song.title}
          >
          {song.title}
        </button>
      </div>
    );
  });

  const albums = this.props.albums.map(album => {
  return (
    <div className="album">
        <img className="demo-image" src={album.album_cover} />

      <button
        onClick={(e) => {this.updateSongCollection(e, album);}}
        className ="album">
        {album.title}
      </button>
    </div>
  );
});


  return (
    <div className="home">
      <h1> DOTIFY HOME PAGE</h1>
        <ul className="album-list"> {albums}</ul>
    </div>
    );
  }
}

export default HomeComponent;
