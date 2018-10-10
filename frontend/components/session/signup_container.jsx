import {connect} from 'react-redux';
import { createNewUser} from '../../actions/session';
import Signup from './signup';

const mapDispatchToPpops = dispatch => ({
  createNewUSer: formUser =>dispatch(createNewUser(formUser))
});

export default connect(null, mapDispatchToPpops)(Signup);
