import React from 'react';
import ReactDOM from 'react-dom';
import Root from "./components/root";
import createStore from './store/store';
// var SetupApp = require("./setup_app");

// import SetupApp from "./setup_app";


document.addEventListener("DOMContentLoaded", () =>{
  let root = document.getElementById("root");
  let preloadedState = undefined;
  // SetupApp();

  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUser: window.currentUser
      }
    };
  }
  const store = createStore(preloadedState);
  window.store = store;


  ReactDOM.render(<Root store = {store}/>, root);
});
