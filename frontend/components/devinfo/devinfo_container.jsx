import React from 'react';
import { connect } from 'react-redux';
import DevInfoComponent from './devInfo';
import { fetchSongs, updateSong } from '../../actions/song';

import { fetchAlbums } from '../../actions/album';
import { updateCollection } from '../../actions/collections';
import { fetchAlbum } from "../../actions/album";
import { logout } from '../../actions/session';



const mapStateToProps = (state, ownProps) => {
    // debugger
    return (
        {
            currentUser: state.session.currentUser,

            songs: Object.values(state.entities.songs),
            album: state.entities.albums[ownProps.match.params.albumID],
            playlists: Object.values(state.entities.playlists)

        }
    );
};

//in component, use this.props.songs do stuff iteratively.

// add functionality to update currentSong
const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(DevInfoComponent);
