import {GET_SONGS} from '../actions/song';
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  // console.log(action.type);
  Object.freeze(oldState);
  switch(action.type){
    case GET_SONGS:
      return merge({}, oldState, action.collection);
    default:
      return oldState;
    }
  };
