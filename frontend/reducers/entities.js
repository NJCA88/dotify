import { combineReducers } from 'redux';
import songReducer from './song';
import albumReducer from './albums';
import playlistsReducer from './playlists';

export default combineReducers({

  songs: songReducer,
  albums: albumReducer,
  playlists: playlistsReducer,

});


//ctrol command up to move multi lines
