import React from 'react';
import {Link} from 'react-router-dom';

export default () => (
<div className="splash">
  <h1>Splash Splash Dotify Splash splash</h1> <br/>
      <img src="https://www.iconsdb.com/icons/preview/white/spotify-xxl.png" />

<br/>

  <span className="testSpan">
    <Link to="/login" >LOGIN</Link>
  </span>

<p> --- ALREADY HAVE AN ACOUNT?--- </p>



  <span className="testSpan">
    <Link to="/signup" >Signup</Link>
  </span>

</div>
);
