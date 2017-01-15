import { RECEIVE_COMMENTS,
         RECEIVE_COMMENT,
         RECEIVE_ERRORS,
         CLEAR_ERRORS } from '../actions/comment_actions';

import merge from 'lodash/merge';

const _defaultState = {
  comments: [],
  errors: []
};

const CommentReducer = (state = _defaultState, action) => {
  let newState = merge({}, state);
  switch(action.type) {
    case RECEIVE_COMMENTS:
      newState.comments = action.comments;
      return newState;
    case RECEIVE_COMMENT:
      console.log(action.comment);
      newState.comments.push(action.comment);
      return newState;
    case RECEIVE_ERRORS:
      newState.errors = action.errors;
      return newState;
    case CLEAR_ERRORS:
      newState.errors = [];
      return newState;
    default:
        return state;
  }
};

export default CommentReducer;
