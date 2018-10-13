import React from 'react';
import ReactPlayer from 'react-player';

// export default ({currentUser}) => {
  // debugger;
  // {<h1> Hello, {currentUser.username} </h1>}
  //
class HomeComponent extends React.Component{
  constructor(props){
    super(props);
    this.updateSong = this.updateSong.bind(this);
  }

  componentDidMount() {
    this.props.fetchSongs();
    // console.log(`songs are ${songs}`);
  }


  updateSong(e, song){
    e.preventDefault();
    console.log(song.title);
    // debugger
  }

  render(){
    const songs = this.props.songs.map(song => {
    return (
      <button onClick={(e) => {this.updateSong(e, song);}}
        id={song.title}
        >
        {song.title}
      </button>
    );
  });

  return (
    <div className="home">
      <h1> DOTIFY HOME PAGE</h1>

        <ul>{songs}</ul>
          <h1> Hello, You're on the home screen </h1>

    </div>
    );
  }
}

export default HomeComponent;
