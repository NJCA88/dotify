// import {getAlbums} from '../utils/album_api_util';

export const UPDATE_COLLECTION = "UPDATE_COLLECTION";

export const receiveCollection = collection => {
  return {
    type: UPDATE_COLLECTION,
    collection
  };
};
