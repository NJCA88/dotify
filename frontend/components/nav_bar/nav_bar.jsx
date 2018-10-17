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
              <img src="https://www.iconsdb.com/icons/preview/white/spotify-xxl.png" />
              <h1> Dotify </h1>
            </div>
            <ul>

          <li>
            <button> Search
            </button>
          </li>
          <li>
            <button onClick={this.handleSubmit} >Logout
            </button>
          </li>
          <li>
            <button onClick={this.handleGoHome} >Home
            </button>
          </li>

        <li>
          <button> Search
          </button>
        </li>
      </ul>


      </div>
      );
    }
  }
  export default NavBarComponent;
