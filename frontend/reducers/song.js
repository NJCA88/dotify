import {GET_SONGS} from '../actions/song';
import {merge} from 'lodash';

export default (oldState =[], action) => {
  Object.freeze(oldState);
  switch(action.type){
    case GET_SONGS:
      return merge({}, oldState, action.songs);
    default:
      return oldState;
    }
  };
