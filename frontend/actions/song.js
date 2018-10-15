import {getSongs} from '../utils/song_api_util';

export const GET_SONGS = "GET_SONGS";

const receiveSongs = songs => {
  return {
    type: GET_SONGS,
    songs
  };
};





export const fetchSongs = () => dispatch => getSongs()
  .then(songs => dispatch(receiveSongs(songs)));
