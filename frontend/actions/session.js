import  {postUser, deleteSession, postSession} from '../utils/session_api_util';


export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS"

const receiveCurrentUser = user => ({
  type: RECEIVE_CURRENT_USER,
  user,
});

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER
});

const receiveErrors = err => ({
  type: RECEIVE_ERRORS,
  err
})

export const createNewUser = formUser => dispatch => postUser(formUser)
  .then(user => dispatch(receiveCurrentUser(user)), 
    err => {
    dispatch(receiveErrors(err.responseText))
  })

export const login = formUser => dispatch => postSession(formUser)
  .then(user => dispatch(receiveCurrentUser(user)),
    err => {
    dispatch(receiveErrors(err.responseText))
  })

export const logout = () => dispatch => deleteSession()
  .then(() => dispatch(logoutCurrentUser()));
