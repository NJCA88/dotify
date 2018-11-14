import { getPlaylists, getPlaylist } from '../utils/playlist_api_util';

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

export const fetchAlbum = (id) => dispatch => getAlbum(id)
    .then(payload => dispatch(receivePlaylist(payload)));


