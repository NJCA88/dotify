import React from 'react';

class NavBarComponent extends React.Component{
  constructor(props){
    super(props);
    this.state = {
        };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleGoHome = this.handleGoHome.bind(this);

  }


  handleSubmit(e){
    e.preventDefault();
    this.props.logout()
      .then( ()=> this.props.history.push('/splash'));
  }

handleGoHome(e){
  e.preventDefault();
  this.props.history.push('/home');
}



  render(){
    return (
      <div className="nav-bar">

            <div className="logo-with-name-white-small">
          <img src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/spotify-img.png" />
              <h1> Dotify </h1>
            </div>
            <ul>

          <li>
            <button className="nav-icon">
              <img src="http://romanovrussia.com/wp-content/uploads/search-icon.png" />
              <p>Search</p>
            </button>
          </li>
          <li>
            <button onClick={this.handleGoHome} className="nav-icon">
              <img src="https://mbtskoudsalg.com/images/home-icon-white-png-8.png" />
              <p>Home</p>
            </button>
          </li>

        <li>
          <button className="nav-icon">
            <p>Your Library</p>
          </button>
        </li>

      <li>
        <button onClick={this.handleSubmit} className="nav-icon">
          <p>Logout</p>
        </button>
      </li>
    </ul>

      </div>
      );
    }
  }
  export default NavBarComponent;
