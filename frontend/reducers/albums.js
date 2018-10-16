import {GET_ALBUMS} from '../actions/album';
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  Object.freeze(oldState);
  switch(action.type){
    case GET_ALBUMS:
      return merge({}, oldState, action.albums);
    default:
      return oldState;
    }
  };
