import React from "react";
import { connect } from "react-redux";
import CreatePlaylistComponent from "./CreatePlaylistComponent";
import { fetchPlaylists, makePlaylist } from "../../actions/playlist";

const mapStateToProps = state => {
    // debugger
    return {
        currentUser: state.session.currentUser,
        songs: Object.values(state.entities.songs),
        playlists: Object.values(state.entities.playlists)
    };
};

//in component, use this.props.songs do stuff iteratively.

const mapDispatchToProps = dispatch => ({
    createPlaylist: playlist => dispatch(makePlaylist(playlist)),
    fetchPlaylists: () => dispatch(fetchPlaylists()),

});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(CreatePlaylistComponent);
