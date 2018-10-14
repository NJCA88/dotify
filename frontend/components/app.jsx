import React from 'react';
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import HomeContainer from "./home/home_container";
import NavBarContainer from "./nav_bar/nav_bar_container";
import HomeNavComponent from "./home_nav/home_nav";
import PlayerComponent from "./player/player";
import Splash from "./splash/splash";
import { Route, Switch } from 'react-router-dom';
import HomeComponent from "./home/home";
import {Redirect} from "react-router-dom";

import { AuthRoute, ProtectedRoute } from '../utils/route_util_api';


// protected route below switch for nav bar
//react player to play music

export default ()=> (
  <div>
    <Route path='/home' component = {NavBarContainer} />
    <Route path='/home' component = {PlayerComponent} />
    <Route path='/home' component = {HomeNavComponent} />

    <Switch>
      <AuthRoute path="/splash" component={Splash} />
      <AuthRoute path='/signup' component = {SignupContainer} />
      <AuthRoute path='/login' component = {LoginContainer} />
      <ProtectedRoute exact path="/home" component={HomeContainer} />

      <Route path="/" render={() => <Redirect to="/splash" />} />
    </Switch>



  </div>
);
