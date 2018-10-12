import React from 'react';
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import HomeContainer from "./home/home_container";
import NavBarContainer from "./nav_bar/nav_bar_container";
import Splash from "./splash/splash";
import { Route, Switch } from 'react-router-dom';
import Home from "./home/home";
import {Redirect} from "react-router-dom";



export default ()=> (
  <div>
    <Switch>
      <Route path="/splash" component={Splash} />
      <Route path='/signup' component = {SignupContainer} />
      <Route path='/login' component = {LoginContainer} />
      <Route path='/home' component = {HomeContainer} />
      <Route path="/" render={() => <Redirect to="/splash" />} />
    </Switch>
    
    <NavBarContainer />

  </div>
);
