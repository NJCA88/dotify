import React from 'react';
import ReactPlayer from 'react-player';

class PlayerComponent extends React.Component{


  constructor(props){
    super(props);
    this.playToggle = this.playToggle.bind(this);
    this.generateSongQueue = this.generateSongQueue.bind(this);
    this.state = {
      currentSong_track: '/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a8ae4ec9fbbdcfd2a1df1e181020810568fe588a/Whiplash.m4a',
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
    this.generateSongQueue();

  }

  generateSongQueue(){

    console.log("answer?:", this.props.collection.songs);

    this.setState({
      songQueue: this.props.collection.songs
    });
    console.log("QUEUE IS", this.state.songQueue);
  }



  render(){
    return (
      <div className="player">
        <p>SONG PLAYER!!!!</p>

        <button onClick={this.playToggle} className="myButton">
          play / pause
        </button>

          <div className="video-player">
            <ReactPlayer
              url= {this.state.currentSong_track}
               playing = {this.state.playing}
              />
          </div>

      </div>
      );
    }
  }
  export default PlayerComponent;
