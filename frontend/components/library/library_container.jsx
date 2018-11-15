import React from "react";
import { connect } from "react-redux";
import libraryComponent from "./library";
import { fetchSongs } from "../../actions/song";
import { fetchPlaylists, fetchPlaylist } from "../../actions/playlist";
import { receiveCollection, fetchAlbum } from "../../actions/collections";

const mapStateToProps = state => {
  // console.log("current state is", state);
  // debugger
  return {
    currentUser: state.session.currentUser,
    songs: Object.values(state.entities.songs),
    playlists: Object.values(state.entities.playlists)
  };
};

//in component, use this.props.songs do stuff iteratively.

const mapDispatchToProps = dispatch => ({
  fetchSongs: () => dispatch(fetchSongs()),
  fetchPlaylists: () => dispatch(fetchPlaylists()),
  updateCollection: collection => dispatch(fetchPlaylist(collection))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(libraryComponent);