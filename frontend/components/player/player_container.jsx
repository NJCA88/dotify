import React from 'react';
import {connect} from 'react-redux';
import PlayerComponent from './player';

const mapStateToProps = state => {
  // console.log("CURRENT STATE is:", state);
  return({
    collection: state.ui.collection
  });
};

export default connect(mapStateToProps, null)(PlayerComponent);
