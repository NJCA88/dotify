import React from 'react';
import ReactPlayer from 'react-player';


class HomeComponent extends React.Component{
  constructor(props){
    super(props);
    this.updateSong = this.updateSong.bind(this);
    this.currentSong = "";
    this.state = {
      currentSong: '',
      playing: false
    };
  }

  componentDidMount() {
    this.props.fetchSongs();
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

  render(){
    const songs = this.props.songs.map(song => {
    return (
      <button
        onClick={(e) => {this.updateSong(e, song);}}
        id={song.title}
        >
        {song.title}
      </button>
    );
  });

  const songPlayer = <div>
    NO SONGS TODAY
        <div className="video-player">
           <ReactPlayer url= {this.currentSong} playing />;
         </div>;
     </div>;

  // if (this.currentSong){
  //    songPlayer =
  //     <div className="video-player">
  //        <ReactPlayer url='https://s3-us-west-1.amazonaws.com/dotify-song-dev/LG1nntPiAcsEa2brXeSAkTRp' playing />;
  //      </div>;
  // // } else{
  //   songPlayer = <div>'no song :-('</div>;
  // }

  return (
    <div className="home">
      <h1> DOTIFY HOME PAGE</h1>
        <ul>{songs}</ul>
        <h1> Hello, You're on the home screen </h1>

          <div className="player">
            <ReactPlayer
              url= {this.state.currentSong}
               playing = {this.state.playing}
              />
          </div>

    </div>
    );
  }
}

export default HomeComponent;
