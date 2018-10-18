import {getAlbums, getAlbum} from '../utils/album_api_util';

export const GET_ALBUMS = "GET_ALBUMS";
export const RECEIVE_ALBUM = "RECEIVE_ALBUM";


const receiveAlbums = albums => {
  return {
    type: GET_ALBUMS,
    albums
  };
};

const receiveAlbum = payload => {
  return {
    type: RECEIVE_ALBUM,
    payload
  };
};

export const fetchAlbum = (id) => dispatch => getAlbum(id)
.then(payload => dispatch(receiveAlbum(payload)));


export const fetchAlbums = () => dispatch => getAlbums()
.then(albums => dispatch(receiveAlbums(albums)));
