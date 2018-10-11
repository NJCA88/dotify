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

  }

  handleInput(type){
    return(e)=> {
      this.setState({ [type]: e.target.value});
    };
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.createNewUser(this.state)
      .then( ()=> this.props.history.push('/home'));
  }

  render(){
      return( <div className="signup-form">


      <ul className="signup-form">
      <li>
        <div className="logo-with-name-black">
          <img src="https://cdn2.iconfinder.com/data/icons/font-awesome/1792/spotify-512.png" />
          <h1> Dotify </h1>
        </div>
      </li>

      <li>
        <h2>SignUp!</h2>
        </li>
      <form>


        <li>
            <div className="email">
              <input
                type="text"
                value={this.state.email}
                onChange={this.handleInput('email')}
                placeholder="email"
                />
            </div>
          </li>

          <li>
          <div>
            <input
              type="text"

              placeholder="Confirm email"

              />
          </div>
          </li>
          <li>
          <div>
            <input
              type="password"
              value={this.state.password}
              onChange={this.handleInput('password')}
              placeholder="Password"

              />
          </div>
          </li>

          <li>
          <div>
            <input
              type="text"
              value={this.state.username}
              onChange={this.handleInput('username')}
              placeholder="What should we call you?"
              />
          </div>
          </li>

          <li>
          <div className="register-DOB">
            <label>Date of Birth
              <select>
                  <option value="January">January</option>
                  <option value="February">February</option>
                  <option value="March">March</option>
                  <option value="April">April</option>
                  <option value="May">May</option>
                  <option value="June">June</option>
                  <option value="July">OctoberJuly</option>
                  <option value="August">August</option>
                  <option value="September">September</option>
                  <option value="October">October</option>
                  <option value="November">November</option>
                  <option value="December">December</option>
              </select>
              <input type="number"
                placeholder="Day"
                maxLength="2"
              />
              <input type="number"
                placeholder="Year"
              />
            </label>

            <div>
              <input type="radio" name="gender" value="male" /> Male
              <input type="radio" name="gender" value="female" /> Female
              <input type="radio" name="gender" value="non-binary" /> Non-Binary
            </div>

          </div>
          </li>
          <li>
          <button onClick={this.handleSubmit} className="signup-button">Sign Up</button>
          </li>
      </form>
      </ul>
      </div> );
    }
  }
  export default Signup;
