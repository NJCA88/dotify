import {
    RECEIVE_ERRORS,
    
} from '../actions/session';

export default (state = [], action) => {
    Object.freeze(state);
    debugger
    switch (action.type) {
        case RECEIVE_ERRORS:
            return action.err;
        default:
            return state;
    }
};