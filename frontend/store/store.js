import { createStore, applyMiddleware } from 'redux';

import {createLogger} from 'redux-logger';
import rootReducer from '../reducers/root';
import thunk from '../thunk/thunk';

const middlewares = [thunk];

if (process.env.NODE_ENV !== 'production') {
  middlewares.push(createLogger());
}

export default (preloadedState = {}) => createStore(
  rootReducer, preloadedState, applyMiddleware(...middlewares)
);
