import { connect } from 'react-redux';
import SearchComponent from './search';

const mapDispatchToProps = dispatch => ({
    // logout: () => dispatch(logout())
    // will need to import a DB query function
});

export default connect(null, mapDispatchToProps)(SearchComponent);
