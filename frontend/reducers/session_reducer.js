import { RECEIVE_CURRENT_USER,
         RECEIVE_ERRORS,
         REMOVE_ERRORS } from '../actions/session_actions';
import merge from 'lodash/merge';

const _defaultState = {
  currentUser: null,
  errors: []
};

const sessionReducer = (state = _defaultState, action) => {
  let newState = merge({}, state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      newState.currentUser = action.currentUser;
      return newState;

    case RECEIVE_ERRORS:
      newState.errors = action.errors;
      return newState;

    case REMOVE_ERRORS:
      newState.errors = [];
      return newState;

    default:
      return state;
  }
};

export default sessionReducer;
