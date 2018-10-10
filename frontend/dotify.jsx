import React from 'react';
import ReactDOM from 'react-DOM';
import Root from "./components/root";
import createStore from './store/store';


document.addEventListener("DOMContentLoaded", () =>{
  let root = document.getElementById("root");
  let preloadedState = undefined;
  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUSer: window.currentUser
      }
    };
  }
  const store = createStore(preloadedState);


  ReactDOM.render(<Root store = {store}/>, root);
});
