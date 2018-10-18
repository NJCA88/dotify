import React from 'react';
import {connect} from 'react-redux';
import PlayerComponent from './player';

const mapStateToProps = state => {
  // console.log("CURRENT STATE is:", state);
  return({
    collectionSongs: state.ui.collection.songs,
    collection: state.ui.collection.album,
    currentSong: state.ui.currentSong
  });
};

export default connect(mapStateToProps, null)(PlayerComponent);
