import {connect} from 'react-redux';
import { createNewUser, login} from '../../actions/session';
import Signup from './signup';

const mapStateToProps = state => {
  console.log("current errors are:", state.errors);
  debugger
  return {
    errors: state.errors
  };
};

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser =>(createNewUser(formUser)(dispatch)),
  login: formUser => dispatch(login(formUser))
});

export default connect(mapStateToProps, mapDispatchToProps)(Signup);
