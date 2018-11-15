import { RECEIVE_PLAYLISTS, RECEIVE_PLAYLIST } from '../actions/playlist';
import { merge } from 'lodash';

export default (oldState = {}, action) => {

    // the correct playlists are making it here
    Object.freeze(oldState);
    // console.log("MY ACTION TYPE IS:", action.type);
    switch (action.type) {
      case RECEIVE_PLAYLISTS:
        console.log("in the correct case");
        return merge({}, oldState, action.playlists);
      case RECEIVE_PLAYLIST:
        return { [action.payload.playlist.id]: action.payload.playlist };
      default:
      console.log("")
        return oldState;
    }
};
