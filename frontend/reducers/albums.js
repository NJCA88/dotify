import {GET_ALBUMS, RECEIVE_ALBUM} from '../actions/album';
import {merge} from 'lodash';

export default (oldState ={}, action) => {
  Object.freeze(oldState);
  // console.log("MY ACTION TYPE IS:", action.type);
  switch(action.type){
    case GET_ALBUMS:
      return merge({}, oldState, action.albums);
    case RECEIVE_ALBUM:
        return {[action.payload.album.id]: action.payload.album};
    default:
      return oldState;
    }
  };
