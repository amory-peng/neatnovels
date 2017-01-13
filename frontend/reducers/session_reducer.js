import { RECEIVE_CURRENT_USER, RECEIVE_ERRORS, REMOVE_ERRORS } from '../actions/session_actions';
import merge from 'lodash/merge';

const _defaultState = {
  currentUser: null,
  errors: []
};

const sessionReducer = (state = _defaultState, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, state, { currentUser: action.currentUser });
    case RECEIVE_ERRORS:
      return merge({}, state, { errors: action.errors });
    case REMOVE_ERRORS:
      let newState = Object.assign( {}, state, { errors: [] });
      return _defaultState;
      // return newState;
    default:
      return state;
  }
};

export default sessionReducer;
