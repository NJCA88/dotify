import {getAlbums} from '../utils/album_api_util';

export const GET_ALBUMS = "GET_ALBUMS";

const receiveAlbums = albums => {
  return {
    type: GET_ALBUMS,
    albums
  };
};





export const fetchAlbums = () => dispatch => getAlbums()
  .then(albums => dispatch(receiveAlbums(albums)));
