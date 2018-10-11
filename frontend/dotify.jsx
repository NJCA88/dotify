import React from 'react';
import ReactDOM from 'react-dom';
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
  window.store = store;


  ReactDOM.render(<Root store = {store}/>, root);
});
