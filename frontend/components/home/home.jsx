import React from 'react';

export default ({currentUser}) => {
  // debugger;
  return (
  <div className="home">
    <h1> DOTIFY HOME PAGE</h1>


        <h1> Hello, {currentUser.username} </h1>

  </div>
);
};
