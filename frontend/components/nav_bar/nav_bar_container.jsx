import {connect} from 'react-redux';
import { logout } from '../../actions/session';
import NavBarComponent from './nav_bar';

const mapStateToProps = (state, ownProps) => {

  return (
    {
      currentUser: state.session.currentUser,
      playlists: Object.values(state.entities.playlists)
    }
  );
};
const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBarComponent);
