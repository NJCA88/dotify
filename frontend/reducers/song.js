import {GET_SONGS, UPDATE_SONG} from '../actions/song';
import {RECEIVE_ALBUM} from "../actions/album";
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  // console.log(action.type);
  Object.freeze(oldState);
  switch(action.type){

    case RECEIVE_ALBUM:
      return action.payload.songs;

    default:
      return oldState;
    }
  };
