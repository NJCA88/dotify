import React from 'react';
import { connect } from 'react-redux';
import SearchComponent from './search';
import { fetchSongs, updateSong } from '../../actions/song';
import {
    fetchPlaylists,
    fetchPlaylist,
    makePlaylist,
    makePlaylistSong
} from "../../actions/playlist";

import { fetchAlbums } from '../../actions/album';
import { updateCollection } from '../../actions/collections';
import { fetchAlbum } from "../../actions/album";


const mapDispatchToProps = dispatch => ({
    updateCurrentSong: song => dispatch(updateSong(song)),
    // receiveAlbum: id => dispatch(receiveAlbum(album))
    fetchAlbum: id => dispatch(fetchAlbum(id)),
    updateCollection: payload => dispatch(updateCollection(payload)),
    fetchPlaylists: () => dispatch(fetchPlaylists()),
    createPlaylistSong: (playlistId, songId) => dispatch(makePlaylistSong(playlistId, songId))

});

export default connect(null, mapDispatchToProps)(SearchComponent);
