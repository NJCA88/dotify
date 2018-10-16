import { combineReducers } from 'redux';

import collectionReducer from './collection';


export default combineReducers({
  collection: collectionReducer
});
