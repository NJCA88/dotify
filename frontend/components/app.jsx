import React from 'react';
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import HomeContainer from "./home/home_container";
import NavBarContainer from "./nav_bar/nav_bar_container";
import HomeNavComponent from "./home_nav/home_nav";
import PlayerComponent from "./player/player";
import playerContainer from "./player/player_container";
import Splash from "./splash/splash";
import { Route, Switch } from 'react-router-dom';
import HomeComponent from "./home/home";
import {Redirect} from "react-router-dom";
import AlbumContainer from   "./home/album_show_container";
import PlaylistContainer from   "./playlist/playlist_container";
import PlaylistComponent from   "./playlist/playlist";
import LibraryContainer from "./library/library_container";
import AboutContainer from "./about/about_container";


import { AuthRoute, ProtectedRoute } from '../utils/route_util_api';


// protected route below switch for nav bar
//react player to play music

export default ()=> (
  <div>
    <ProtectedRoute path='/' component = {NavBarContainer} />
    <ProtectedRoute path='/' component = {playerContainer} />
    <ProtectedRoute path='/home' component = {HomeNavComponent} />

    <Switch>
      <AuthRoute path="/splash" component={Splash} />
      <AuthRoute path='/signup' component = {SignupContainer} />
      <AuthRoute path='/login' component = {LoginContainer} />
      <ProtectedRoute exact path="/home" component={HomeContainer} />
      <ProtectedRoute exact path="/library" component={LibraryContainer} />
      <ProtectedRoute exact path="/albums/:albumID" component={AlbumContainer} />
      <ProtectedRoute exact path="/playlists/:playlistID" component={PlaylistContainer} />
      <ProtectedRoute exact path="/about" component={AboutContainer} />


    </Switch>
    <Route path="/" render={() => <Redirect to="/splash" />} />



  </div>
);
