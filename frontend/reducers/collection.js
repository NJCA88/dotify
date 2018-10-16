import {UPDATE_COLLECTION} from '../actions/collections';
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  Object.freeze(oldState);
  switch(action.type){
    case UPDATE_COLLECTION:
      return merge({}, oldState, action.collection);
    default:
      return oldState;
    }
  };
