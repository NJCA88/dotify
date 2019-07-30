import {GET_SONGS, UPDATE_SONG} from '../actions/song';
import {RECEIVE_ALBUM} from "../actions/album";
import {RECEIVE_PLAYLIST} from "../actions/playlist"
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  Object.freeze(oldState);
  switch(action.type){

    case RECEIVE_ALBUM:
      return action.payload.songs;
    case RECEIVE_PLAYLIST:
      return action.payload.songs;
    default:
      return oldState;
    }
  };
