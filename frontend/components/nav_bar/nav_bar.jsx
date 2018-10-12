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
        <p>NAV BAR </p>

        <button onClick={this.handleSubmit} >Logout>
        </button>


      </div>
      );
    }
  }
  export default NavBarComponent;
