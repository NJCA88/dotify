import {connect} from 'react-redux';
import { logout } from '../../actions/session';
import NavBarComponent from './nav_bar';

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(null, mapDispatchToProps)(NavBarComponent);
