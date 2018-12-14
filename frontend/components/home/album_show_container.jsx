import React from 'react';
import {connect} from 'react-redux';
import AlbumShowComponent from './album_show';
import {fetchSongs, updateSong} from '../../actions/song';
import {
  fetchPlaylists,
  fetchPlaylist,
  makePlaylist,
  makePlaylistSong
} from "../../actions/playlist";

import {fetchAlbums} from '../../actions/album';
import {updateCollection} from '../../actions/collections';
import {fetchAlbum} from "../../actions/album";


const mapStateToProps = (state, ownProps) => {
  console.log("current state is", state);
  // debugger
  return (
    {currentUser: state.session.currentUser,

    songs: Object.values(state.entities.songs),
    album: state.entities.albums[ownProps.match.params.albumID],
    playlists: Object.values(state.entities.playlists)

    }
  );
};

//in component, use this.props.songs do stuff iteratively.

// add functionality to update currentSong
const mapDispatchToProps = dispatch => ({
  updateCurrentSong: song => dispatch(updateSong(song)),
  // receiveAlbum: id => dispatch(receiveAlbum(album))
  fetchAlbum: id => dispatch(fetchAlbum(id)),
  updateCollection: payload => dispatch(updateCollection(payload)),
  fetchPlaylists: () => dispatch(fetchPlaylists()),
  createPlaylistSong: (playlistId, songId) => dispatch(makePlaylistSong(playlistId, songId))

});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumShowComponent);
