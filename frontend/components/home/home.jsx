import React from 'react';
import ReactPlayer from 'react-player';


class HomeComponent extends React.Component{
  constructor(props){
    super(props);
    this.updateSong = this.updateSong.bind(this);
    this.currentSong = "";
  }

  componentDidMount() {
    this.props.fetchSongs();
  }


  updateSong(e, song){
    e.preventDefault();
    console.log(song.title);
    this.currentSong = `${song.track}`;
    console.log(this.currentSong);
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
  // } else{
  //   songPlayer = <div>'no song :-('</div>;
  // }

  return (
    <div className="home">
      <h1> DOTIFY HOME PAGE</h1>
        <ul>{songs}</ul>
        <h1> Hello, You're on the home screen </h1>

        <ul>
          {songPlayer}
        </ul>

    </div>
    );
  }
}

export default HomeComponent;
