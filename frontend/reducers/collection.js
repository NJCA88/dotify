import {UPDATE_COLLECTION, UPDATE_COLLECTION_PLAYLIST} from '../actions/collections';
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  Object.freeze(oldState);
  // debugger
  switch(action.type){
    case UPDATE_COLLECTION:
      return {name: action.payload.album, songs: action.payload.songs};
    case UPDATE_COLLECTION_PLAYLIST:
      return { name: action.payload.playlist, songs: action.payload.songs };
    default:
      return oldState;
    }
  };


