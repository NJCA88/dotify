import React from 'react';
import ReactPlayer from 'react-player';

class PlayerComponent extends React.Component{


  constructor(props){
    super(props);
    this.playToggle = this.playToggle.bind(this);
    this.generateSongQueue = this.generateSongQueue.bind(this);
    this.updateCurrentSong = this.updateCurrentSong.bind(this);
    this.nextSong = this.nextSong.bind(this);
    this.handleNext = this.handleNext.bind(this);
    this.state = {
      // currentSong_track: '/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a8ae4ec9fbbdcfd2a1df1e181020810568fe588a/Whiplash.m4a',
      currentSong_track: 'https://s3-us-west-1.amazonaws.com/dotify-song-dev/u2UcP3X1xfzTME4AfYNMRLY2',
      playing: false,
      songQueue: []

    };
  }

  componentDidMount(){
    // this.generateSongQueue();
    console.log("componentDidMount hit");
  }

  playToggle() {
    if (this.state.playing === false) this.setState({playing: true});
    if (this.state.playing === true) this.setState({playing: false});

    console.log("this.props.collection:", this.props.collection);
    // this.generateSongQueue();
  }


  updateCurrentSong(song){
    this.props.updateCurrentSong(song);
  }

  handleNext(){
    this.updateCurrentSong(this.state.songQueue[2]);
  }

  nextSong(e, song){
    e.preventDefault();
    this.updateCurrentSong(song);
  }

  // componentWillReceiveProps(nextProps){
  //   if (this.props !== nextProps && this.props.collection !== undefined){
  //     console.log("CWRP hit");
  //     this.generateSongQueue();
  //   }
  // }

  componentDidUpdate(oldProps){
    if (this.props.currentSong !== oldProps.currentSong && this.props.collection !== undefined){
      console.log("CWRP hit");
      this.generateSongQueue();
    }
  }


  generateSongQueue(){
    const collectionOrder = Object.values(this.props.collectionSongs);

    var currentSong = this.props.currentSong;
    let currentSongIdx = collectionOrder.findIndex(function (song) {return  song.id == currentSong.id; });
    let prevSong = currentSong;
    let nextSong = collectionOrder[currentSongIdx + 1];
    let next = "";
    if (currentSongIdx < (collectionOrder.length - 1) ) {
      next = collectionOrder[currentSongIdx + 1];
    } else {
      next = collectionOrder[0];
    }

    // console.log("ANSWER IS", answer);
    // console.log("NEXT SONG IS",  nextSong.title);


    this.setState({
      songQueue: [currentSong, currentSong, next ]
    });
    console.log("this.state.songQueue is:", this.state.songQueue);
  }



  render(){

    // console.log("YO SHIT IS BROKE!!!", this.props);
    const track = this.props.currentSong ? this.props.currentSong.track : "";
    // const track = this.state.currentSong_track;
    // debugger
    const image_src = this.props.collection? this.props.collection.album_cover : "https://www.iconsdb.com/icons/preview/white/spotify-xxl.png";
    const title = this.props.currentSong ? this.props.currentSong.title : "";
    // const collection = "cats"
    const collection = this.props.collection ? this.props.collection.title : "";


    let player_image ="";
    if (this.state.playing === false) {
       player_image = "https://mbtskoudsalg.com/images/white-play-button-png-5.png";
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

          <button className="player-skip-button">
            <img src="https://www.materialui.co/materialIcons/av/fast_rewind_grey_192x192.png" />
          </button>


          <button onClick={this.playToggle} className="player-play-button"
            placeholder= "&#xf144;" charSet="utf-8"
            >
            <div>
                <img src={player_image} />
            </div>
          </button>

          <button onClick={e => this.nextSong(e, this.state.songQueue[2])} className="player-skip-button"
            >
            <div>
                <img src="https://www.materialui.co/materialIcons/av/fast_forward_grey_192x192.png" />
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
               onEnded= {this.handleNext}

              />
          </div>

      </div>
      );
    }
  }
  export default PlayerComponent;
