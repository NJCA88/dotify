import {connect} from 'react-redux';
import { login} from '../../actions/session';
import LoginComponent from './login';

const mapDispatchToProps = dispatch => ({
  login: formUser =>dispatch(login(formUser))
});

export default connect(null, mapDispatchToProps)(LoginComponent);
