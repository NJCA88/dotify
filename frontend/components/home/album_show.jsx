import React from 'react';
import ReactPlayer from 'react-player';


class AlbumShowComponent extends React.Component{
  constructor(props){
    super(props);

    this.updateCurrentSong = this.updateCurrentSong.bind(this);
    this.updateMusic = this.updateMusic.bind(this);
  }

  componentDidMount(){
    console.log("hitting CDM");
    this.props.fetchAlbum(this.props.match.params.albumID);
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


  render(){
    if (this.props.album === undefined) return <div>wrong</div>;

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
          </li>
        </div>;
    }
  );



    return (
      <div>
        <div className="album-show-component">
        <div className="cover-and-info">
              <img className="album-cover" src={this.props.album.album_cover} />

            <h1 className="album-title">{this.props.album.title}</h1>

            <button className="play-button" onClick={e => {
              this.updateMusic(e, { album: this.props.album, songs: this.props.songs }, this.props.songs[0]);
            }}>
              play
          </button>

          </div>
          <div className="song-list">
            <ul >
              {songs}
            </ul>
            </div>
        </div>
  </div>
      );
    }
  }
  export default AlbumShowComponent;
