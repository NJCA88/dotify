import React from 'react';

class NavBarComponent extends React.Component{
  constructor(props){
    super(props);
    this.state = {
        };
    this.handleSubmit = this.handleSubmit.bind(this);

  }


  handleSubmit(e){
    e.preventDefault();
    this.props.logout()
      .then( ()=> this.props.history.push('/splash'));
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
            <button onClick={this.handleSubmit} >Logout
            </button>
          </li>

        <li>
          <button> DummyButton
          </button>
        </li>
      </ul>


      </div>
      );
    }
  }
  export default NavBarComponent;
