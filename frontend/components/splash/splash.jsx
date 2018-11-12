import React from 'react';
import {Link} from 'react-router-dom';

class Splash extends React.Component{
  constructor(props){
    super(props);
    this.handleLogin = this.handleLogin.bind(this);
    this.handleSignup = this.handleSignup.bind(this);
  }

  handleSignup(e){
    this.props.history.push('/signup');
  }

  handleLogin(e){
    this.props.history.push('/login');
  }
  render(){
    return(
    <div className="splash">

      <div className="splash-nav">
        <div className="logo-with-name">
          <img src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/spotify-img.png" />
          <h1> Dotify </h1>
        </div>

        <button onClick={this.handleSignup} className="splash-signup">
          SIGN UP
        </button>

    <p className="splash-nav-text"> --- ALREADY HAVE AN ACOUNT?--- </p>

      <button onClick={this.handleLogin} className="splash-login">
        LOGIN
      </button>


      </div>

      <div className="splash-non-nav">
        <h1>Get the right music right now</h1>
        <h3>"Listen to millions of songs for free"</h3>
        <ul>
            <li><h4>Search and discover music you'll love</h4></li>
            <li><h4>Create playlists of your favorite music"</h4></li>
        </ul>
      </div>

    </div>
  );
}
}

export default Splash;
