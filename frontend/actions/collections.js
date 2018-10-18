import {getAlbum} from '../utils/album_api_util';


export const UPDATE_COLLECTION = "UPDATE_COLLECTION";


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


//I think im supposed to be exporting and calling this one?
export const fetchAlbum = (id) => dispatch => getAlbum(id)
.then(payload => dispatch(updateCollection(payload)));


// is it okay to use the same exact AJAX call?
