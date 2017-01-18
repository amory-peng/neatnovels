import * as SessionApiUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const REMOVE_ERRORS = 'REMOVE_ERRORS';

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

export const removeErrors = errors => ({
  type: REMOVE_ERRORS,
  errors: []
});

//thunks
export const login = user => dispatch => {
  return SessionApiUtil.login(user)
  .then(res => dispatch(receiveCurrentUser(res)))
  .fail(err => dispatch(receiveErrors(err.responseJSON)));
};

export const logout = () => dispatch => {
  return SessionApiUtil.logout()
    .then(res => dispatch(receiveCurrentUser(null)));
};

export const signup = user => dispatch => {
  return SessionApiUtil.signup(user)
  .then(res => dispatch(receiveCurrentUser(res)))
  .fail(err => dispatch(receiveErrors(err.responseJSON)));
};

export const demo = () => dispatch => {
  return SessionApiUtil.demo().then(res => dispatch(receiveCurrentUser(res)));
};
