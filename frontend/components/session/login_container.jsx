import {connect} from 'react-redux';
import { login} from '../../actions/session';
import LoginComponent from './login';

const mapStateToProps = state => {
  return {
    errors: state.errors
  };
};

const mapDispatchToProps = dispatch => ({
  login: formUser =>dispatch(login(formUser))
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginComponent);
