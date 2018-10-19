import {connect} from 'react-redux';
import { createNewUser, login} from '../../actions/session';
import Signup from './signup';

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser =>(createNewUser(formUser)(dispatch)),
  login: formUser => dispatch(login(formUser))
});

export default connect(null, mapDispatchToProps)(Signup);
