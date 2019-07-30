import { RECEIVE_PLAYLISTS, RECEIVE_PLAYLIST } from '../actions/playlist';
import { merge } from 'lodash';

export default (oldState = {}, action) => {

    // the correct playlists are making it here
    Object.freeze(oldState);
    switch (action.type) {
      case RECEIVE_PLAYLISTS:
        return merge({}, oldState, action.playlists);
        // return Object.assign({}, {playlists: action.playlists})
      // case RECEIVE_PLAYLIST:
      //   return { [action.payload.playlist.id]: action.payload.playlist };
      default:
        return oldState;
    }
};
// export default (oldState = {}, action) => {

//     // the correct playlists are making it here
//     Object.freeze(oldState);
//     switch (action.type) {
//       case RECEIVE_PLAYLISTS:
//         return merge({}, oldState, action.playlists);
//       case RECEIVE_PLAYLIST:
//         return { [action.payload.playlist.id]: action.payload.playlist };
//       default:
//         return oldState;
//     }
// };
