import React from 'react';
import SignupContainer from "./session/signup_container";
import loginContainer from "./session/login_container";

import Splash from "./splash/splash";
import { Route } from 'react-router-dom';
import Home from "./home/home";

export default ()=> (
  <div>

    <Route path="/splash" component={Splash} />
    <Route path='/signup' component = {SignupContainer} />
    <Route path='/login' component = {loginContainer} />

    <Route path='/home' component = {Home} />



  </div>
);
