import React from 'react';
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import HomeContainer from "./home/home_container";

import Splash from "./splash/splash";
import { Route } from 'react-router-dom';
import Home from "./home/home";

export default ()=> (
  <div>

    <Route path="/splash" component={Splash} />
    <Route path='/signup' component = {SignupContainer} />
    <Route path='/login' component = {LoginContainer} />

    <Route path='/home' component = {HomeContainer} />



  </div>
);
