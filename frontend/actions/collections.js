import {getAlbum} from '../utils/album_api_util';
import {getPlaylist} from '../utils/playlist_api_util';


export const UPDATE_COLLECTION = "UPDATE_COLLECTION";
export const UPDATE_COLLECTION_PLAYLIST = "UPDATE_COLLECTION_PLAYLIST";


//not gonna use this one...
export const receiveCollection = collection => {
  return {
    type: UPDATE_COLLECTION,
    collection
  };
};


export const updateCollection = payload => {
  return {
    type: UPDATE_COLLECTION,
    payload
  };
};

export const updateCollectionPlaylist = payload => {
  return {
    type: UPDATE_COLLECTION_PLAYLIST,
    payload
  };
};


//I think im supposed to be exporting and calling this one?
export const fetchAlbum = (id) => dispatch => getAlbum(id)
.then(payload => dispatch(updateCollection(payload)));

export const fetchPlaylist = (id) => dispatch => getPlaylist(id)
  .then(payload => dispatch(updateCollectionPlaylist(payload)));


// is it okay to use the same exact AJAX call?
