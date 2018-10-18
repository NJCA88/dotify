import React from 'react';
import ReactPlayer from 'react-player';

class PlayerComponent extends React.Component{


  constructor(props){
    super(props);
    this.playToggle = this.playToggle.bind(this);
    this.generateSongQueue = this.generateSongQueue.bind(this);
    this.state = {
      // currentSong_track: '/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a8ae4ec9fbbdcfd2a1df1e181020810568fe588a/Whiplash.m4a',
      currentSong_track: 'https://s3-us-west-1.amazonaws.com/dotify-song-dev/u2UcP3X1xfzTME4AfYNMRLY2',
      playing: false,
      songQueue: []

    };
  }

  componentDidMount(){
    this.generateSongQueue();
    console.log("componentDidMount hit");
  }

  playToggle() {
    if (this.state.playing === false) this.setState({playing: true});
    if (this.state.playing === true) this.setState({playing: false});

    console.log("this.props.collection:", this.props.collection);
    // this.generateSongQueue();
  }

  // componentWillReceiveProps(nextProps){
  //   if (this.props !=== nextProps){
  //     do stuff
  //   }
  // }

  generateSongQueue(){

    console.log("generating song queue"
  );

    this.setState({
      songQueue: this.props.collection.songs
    });
    console.log("QUEUE IS", this.state.songQueue);
  }
  //
  // <div className="video-player">
  //   <ReactPlayer
  //     url= {this.state.currentSong_track}
  //      playing = {this.state.playing}
  //     />
  // </div>

  console.log("YO SHIT IS BROKE!!!", this.props);
  const track = this.props.currentSong.track ? this.props.currentSong.track : this.state.currentSong_track;
  // const track = this.state.currentSong_track;
  // debugger
  const image_src = this.props.collection.album ? this.props.collection.album.album_cover : "https://www.iconsdb.com/icons/preview/white/spotify-xxl.png";
  const title = this.props.currentSong ? this.props.currentSong.title : "";
  const collection = this.props.collection.album.title ? this.props.collection.title : "";

  let player_image ="";

  render(){

    console.log("YO SHIT IS BROKE!!!", this.props);
    const track = "cats";
    // const track = this.state.currentSong_track;
    // debugger
    const image_src = "cats";
    const title = "cats";
    const collection = "cats";

    let player_image ="";
    if (this.state.playing === false) {
       player_image = "https://mbtskoudsalg.com/images/transparent-png-play-button.png";
    } else {
       player_image = "https://iconsplace.com/wp-content/uploads/_icons/ffffff/256/png/pause-icon-18-256.png";
    }


    return (
      <div className="player">
        <ul className="player-thumb-group">
          <li>
            <img src={image_src} className="album-thumbnail"/>
          </li>
          <li>
            {title} <br />
            {collection}
          </li>

        </ul>

        <ul className="player-song-nav-group">
          <button onClick={this.playToggle} className="player-play-button"
            placeholder= "&#xf144;" charSet="utf-8"
            >
            <div>
                <img src={player_image} />

            </div>
          </button>
        </ul>

        <ul className="player-volume-group">
          <div>VOL</div>
        </ul>


          <div className="video-player">
            <ReactPlayer
              url= {track}
               playing = {this.state.playing}
              />
          </div>

      </div>
      );
    }
  }
  export default PlayerComponent;
