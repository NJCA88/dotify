import React from 'react';
import {connect} from 'react-redux';
import HomeComponent from './home';
import {fetchSongs} from '../../actions/song';
import {fetchAlbums} from '../../actions/album';
import {receiveCollection, fetchAlbum} from '../../actions/collections';


const mapStateToProps = state => {
  // console.log("current state is", state);
  // debugger
  return (
    {currentUser: state.session.currentUser,
    // songs: Object.values(state.entities.songs),
    albums: Object.values(state.entities.albums)
    }
  );
};

//in component, use this.props.songs do stuff iteratively.


const mapDispatchToProps = dispatch => ({
  fetchSongs: () => dispatch(fetchSongs()),
  fetchAlbums: () => dispatch(fetchAlbums()),
  updateCollection: collection => dispatch(fetchAlbum(collection))
});

export default connect(mapStateToProps, mapDispatchToProps)(HomeComponent);



// update collection, update song, recieve album when clicking play on new album