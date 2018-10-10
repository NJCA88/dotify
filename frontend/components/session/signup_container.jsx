import {connect} from 'react-redux';
import { createNewUser} from '../../actions/session';
import Signup from './signup';

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser =>(createNewUser(formUser)(dispatch))
});

export default connect(null, mapDispatchToProps)(Signup);
