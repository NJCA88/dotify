import { combineReducers } from 'redux';
import songReducer from './song';
import albumReducer from './albums';


export default combineReducers({

  songs: songReducer,
  albums: albumReducer,

});


//ctrol command up to move multi lines
