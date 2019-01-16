import React from 'react';
import { connect } from 'react-redux';
import AboutComponent from './about';


const mapStateToProps = state => {

    return (
        {
            currentUser: state.session.currentUser,
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

export default connect(mapStateToProps, mapDispatchToProps)(AboutComponent);
