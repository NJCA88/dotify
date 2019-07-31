import React from 'react';
import { connect } from 'react-redux';
import PlaylistShowComponent from './playlist';
import { fetchSongs, updateSong } from '../../actions/song';
import { fetchPlaylist } from '../../actions/playlist';
import { updateCollection } from '../../actions/collections';


const mapStateToProps = (state, ownProps) => {
    return (
        {
            currentUser: state.session.currentUser,
            songs: Object.values(state.entities.songs),
            playlist: state.entities.playlists[ownProps.match.params.playlistID]
        }
    );
};

//in component, use this.props.songs do stuff iteratively.

// add functionality to update currentSong
const mapDispatchToProps = dispatch => ({
    updateCurrentSong: song => dispatch(updateSong(song)),
    fetchPlaylist: id => dispatch(fetchPlaylist(id)),
    updateCollection: payload => dispatch(updateCollection(payload))
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistShowComponent);
