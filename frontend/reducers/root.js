import { combineReducers } from 'redux';
import sessionReducer from './session';
import songReducer from './song';


export default combineReducers({
  // entities: entitiesReducer
  session: sessionReducer,
  songs: songReducer
});
