import React from 'react';
import {Link} from 'react-router-dom';

export default () => (
<div className="splash">
  <div className="splash-nav">
    <div className="logo-with-name">
      <img src="https://www.iconsdb.com/icons/preview/white/spotify-xxl.png" />
      <h1> Dotify </h1>

    </div>

    <span className="splash-signup">
      <Link to="/signup" >Signup</Link>
    </span>

<p> --- ALREADY HAVE AN ACOUNT?--- </p>


  <span className="splash-login">
    <Link to="/login" >LOGIN</Link>
  </span>

  </div>

  <div className="splash-non-nav">
    <h1>Get the right music right now</h1>
    <h3>"Listen to millions of songs for free"</h3>
    <ul>
      <li>Search and discover music you'll love</li>
      <li>"Create playlists of your favorite music"</li>
    </ul>
  </div>





</div>
);
