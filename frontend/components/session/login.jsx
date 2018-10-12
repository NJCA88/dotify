import React from 'react';

class Signup extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      username: '',
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDummySubmit = this.handleDummySubmit.bind(this);

  }

  handleInput(type){
    return(e)=> {
      this.setState({ [type]: e.target.value});
    };
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.login(this.state)
      .then( ()=> this.props.history.push('/home'));
  }



  handleDummySubmit(e){
    e.preventDefault();
    this.props.login({
      username: 'dummy',
      email: 'test2@test.com',
      password: 'password'
    })
      .then( ()=> this.props.history.push('/home'));
  }



  render(){
      return( <div className="login-form">
      <form className = "login-form">

        <ul>
          <li>
            <div className="logo-with-name-black">
              <img src="https://cdn2.iconfinder.com/data/icons/font-awesome/1792/spotify-512.png" />
              <h1> Dotify </h1>
            </div>
        </li>

        <hr></hr>

        <li>
          <button onClick={this.handleDummySubmit} className="dummy-login">DEMO LOGIN
          </button>
        </li>

        <li>
          <div className="or-divider">
            <p>or</p>
          </div>
        </li>

        <li>
          <input
            type="text"
            value={this.state.email}
            onChange={this.handleInput('email')}
            placeholder= "email"
            />
        </li>

        <li>
          <input
            type="password"
            value={this.state.password}
            onChange={this.handleInput('password')}
            placeholder="password"
            />
          </li>

          <li>
            <button onClick={this.handleSubmit}className="login-button">Login</button>
        </li>

        </ul>
      </form>

      </div> );
    }
  }
  export default Signup;
