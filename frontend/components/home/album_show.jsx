import React from 'react';
import ReactPlayer from 'react-player';


class AlbumShowComponent extends React.Component{
  constructor(props){
    super(props);

    this.updateCurrentSong = this.updateCurrentSong.bind(this);
    this.updateMusic = this.updateMusic.bind(this);
  }

  componentDidMount(){
    //hard coded to get alumbum number 1 right now
    console.log("hitting CDM");
    // debugger
    // console.log("this.props.album.id is:", this.props.album.id);
    // console.log("this.props.album", this.props.album);
    //NOTE hard coded 1 to test album of whiplash_soundtrack
    // this.props.fetchAlbum(1);
    this.props.fetchAlbum(this.props.match.params.albumID);
    // debugger
  }

  // updateSongCollection(e, collection){
  //   e.preventDefault();
  //   //UPDATE STORE HERE
  //   this.props.receiveCollection(collection);
  //   console.log(collection);
  // }
  // updateCurrentSong(e, song){
  //   e.preventDefault();
  //   //UPDATE STORE HERE
  //   this.props.updateCurrentSong(song);
  //   console.log("updating current song with():", song);
  // }

  // <button
  //   onClick={(e) => {this.updateSongCollection(e, this.props.album );}}
  //   play
  //   >
  //   updateCollection
  // </button>
  //
  // <button
  //   onClick={(e) => {this.updateCurrentSong(e, song );}}
  //   >
  //   updateSong
  // </button>
  //
  //
  updateSongCollection(collection){
    //UPDATE STORE HERE
    this.props.receiveCollection(collection);
    console.log("updating collection");
  }

  updateCurrentSong(song){
    //UPDATE STORE HERE
    this.props.updateCurrentSong(song);
    console.log("updating Song");
  }

  updateMusic(e, collection, song){
    e.preventDefault();
    this.updateSongCollection(collection);
    this.updateCurrentSong(song);
  }



  render(){
    if (this.props.album === undefined) return <div>wrong</div>;

    const songs = this.props.songs.map( song => {
      return(
        <div >
          <li className="song">
            <img className="play-icon" src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />



            <button className="music-note-button"
              onClick={(e) => {this.updateMusic(e, this.props.album, song);}} >
              <img src="http://www.clker.com/cliparts/a/p/f/O/d/I/eighth-note-outline-md.png" />
            </button>

            {song.title}
          </li>
        </div>
      );
    }
  );



    return (
      <div>
        <div className="album-show-component">
        <div className="cover-and-info">
              <img className="album-cover" src={this.props.album.album_cover} />

            <h1 className="album-title">{this.props.album.title}</h1>

          <button className="play-button">
            play
          </button>

          </div>
          <div>
            <ul>
              {songs}
            </ul>
            </div>
        </div>
  </div>
      );
    }
  }
  export default AlbumShowComponent;
