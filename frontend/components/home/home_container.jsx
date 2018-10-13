import React from 'react';
import {connect} from 'react-redux';
import Home from './home';

const mapStateToProps = state => {
  return (
    {currentUser: state.session.currentUser,
    songs: state.songs
    }
  );
};

//in component, use this.props.songs do stuff iteratively.


const mapDispatchToProps = dispatch => {
  return {};
};

export default connect(mapStateToProps, mapDispatchToProps)(Home);
