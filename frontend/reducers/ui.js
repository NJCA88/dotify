import { combineReducers } from 'redux';
import albumReducer from "./albums";
import songReducer from "./song";
import currentSongReducer from "./current_song_reducer";
import collectionReducer from './collection';
import playlistReducer from './playlists'


export default combineReducers({
  collection: collectionReducer,
  album: albumReducer,
  playlist: playlistReducer,
  currentSong: currentSongReducer
});
