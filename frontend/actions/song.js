import {getSongs} from '../utils/song_api_util';

export const GET_SONGS = "GET_SONGS";
export const UPDATE_SONG = "UPDATE_SONG";

const receiveSongs = songs => {
  return {
    type: GET_SONGS,
    songs
  };
};

export const updateSong = song => {
  return {
    type: UPDATE_SONG,
    song
  };
};





export const fetchSongs = () => dispatch => getSongs()
  .then(songs => dispatch(receiveSongs(songs)));
