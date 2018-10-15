import React from 'react';
import {connect} from 'react-redux';
import HomeComponent from './home';
import {fetchSongs} from '../../actions/song';

const mapStateToProps = state => {
  console.log("current state is", state);
  return (
    {currentUser: state.session.currentUser,
    // songs: state.songs
    songs: Object.keys(state.songs).map(id => state.songs[id])

    }
  );
};

//in component, use this.props.songs do stuff iteratively.


const mapDispatchToProps = dispatch => ({
  fetchSongs: () => dispatch(fetchSongs()),
});

export default connect(mapStateToProps, mapDispatchToProps)(HomeComponent);
