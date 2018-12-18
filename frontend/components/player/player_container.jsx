import React from 'react';
import {connect} from 'react-redux';
import PlayerComponent from './player';
import { updateSong} from '../../actions/song';


const mapStateToProps = state => {
 debugger
  return({
    collectionSongs: state.ui.collection.songs,
    collection: state.ui.collection.album,
    currentSong: state.ui.currentSong
  });
};

const mapDispatchToProps = dispatch => ({
  updateCurrentSong: song => dispatch(updateSong(song)),
});

export default connect(mapStateToProps, mapDispatchToProps)(PlayerComponent);
