import {connect} from 'react-redux';
import { logout } from '../../actions/session';
import NavBarComponent from './nav_bar';
import { fetchPlaylist } from '../../actions/playlist';


const mapStateToProps = (state, ownProps) => {

  return (
    {
      currentUser: state.session.currentUser,
      playlists: Object.values(state.entities.playlists)
    }
  );
};
const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  fetchPlaylist: id => dispatch(fetchPlaylist(id)),

});

export default connect(mapStateToProps, mapDispatchToProps)(NavBarComponent);
