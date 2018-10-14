import React from 'react';

class HomeNavComponent extends React.Component{
  constructor(props){
    super(props);
  }

  render(){
    return (
      <div className="home-nav">
        <ul className="home-nav-ul">
          <li>
            FEATURED
          </li>
          <li>
            PODCASTS
          </li>
          <li>
            CHARTS
          </li>
          <li>
            FEATURED
          </li>
          <li>
            GENRES
          </li>

        </ul>



      </div>
      );
    }
  }
  export default HomeNavComponent;
