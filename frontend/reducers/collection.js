import {UPDATE_COLLECTION} from '../actions/collections';
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  Object.freeze(oldState);
  // debugger
  switch(action.type){
    case UPDATE_COLLECTION:
      return {album: action.payload.album, songs: action.payload.songs};
    default:
      return oldState;
    }
  };
