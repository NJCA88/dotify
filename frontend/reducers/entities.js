import { combineReducers } from 'redux';
import songReducer from './song';
import albumReducer from './albums';
import playlistReducer from './playlists';

export default combineReducers({

  songs: songReducer,
  albums: albumReducer,
  playlists: playlistReducer,

});


//ctrol command up to move multi lines
