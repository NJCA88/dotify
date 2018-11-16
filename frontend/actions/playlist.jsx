import { getPlaylists, getPlaylist, createPlaylist } from '../utils/playlist_api_util';

export const RECEIVE_PLAYLISTS = "RECEIVE_PLAYLISTS";
export const RECEIVE_PLAYLIST = "RECEIVE_PLAYLIST";


const receivePlaylists = playlists => {
    return {
        type: RECEIVE_PLAYLISTS,
        playlists
    };
};

const receivePlaylist = payload => {
    return {
        type: RECEIVE_PLAYLIST,
        payload
    };
};

export const fetchPlaylists = () => dispatch => getPlaylists()
    .then(playlists => dispatch(receivePlaylists(playlists)));

export const fetchPlaylist = (id) => dispatch => getPlaylist(id)
    .then(payload => dispatch(receivePlaylist(payload)));

export const makePlaylist = playlist => dispatch => createPlaylist(playlist)
    // .then(playlists => dispatch(receivePlaylists(playlists)));



