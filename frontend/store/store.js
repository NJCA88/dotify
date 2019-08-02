import { createStore, applyMiddleware } from 'redux';

import {createLogger} from 'redux-logger';
import logger from 'redux-logger';
import rootReducer from '../reducers/root';
import thunk from '../thunk/thunk';

const middlewares = [thunk];

// if (process.env.NODE_ENV !== 'production') {
if (process.env.NODE_ENV === 'development') {
  middlewares.push(logger);
  console.error("using logger")
}

export default (preloadedState = {}) => createStore(
  rootReducer, preloadedState, applyMiddleware(...middlewares)
);
