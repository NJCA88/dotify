import React from 'react';
import {connect} from 'react-redux';
import HomeComponent from './home';
import {fetchSongs} from '../../actions/song';

const mapStateToProps = state => {
  return (
    {currentUser: state.session.currentUser,
    songs: state.songs
    }
  );
};

//in component, use this.props.songs do stuff iteratively.


const mapDispatchToProps = dispatch => ({
  fetchSongs: () => dispatch(fetchSongs()),
});

export default connect(mapStateToProps, mapDispatchToProps)(HomeComponent);
