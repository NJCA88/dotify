import React from 'react';
// export default ({currentUser}) => {
  // debugger;
  // {<h1> Hello, {currentUser.username} </h1>}
  //
class HomeComponent extends React.Component{
  constructor(props){
    super(props);


  }

  componentDidMount() {
    const songs = this.props.fetchSongs();
    console.log(`songs are ${songs}`);
  }

render(){
  return (
    <div className="home">
      <h1> DOTIFY HOME PAGE</h1>


          <h1> Hello, You're on the home screen </h1>

    </div>
    );
  }
}

export default HomeComponent;
