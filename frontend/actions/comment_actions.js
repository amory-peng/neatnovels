import * as CommentAPIUtil from '../util/comment_api_util';

export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";
export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const CLEAR_COMMENTS = "CLEAR_COMMENTS";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const receiveComments = (comments) => ({
  type: RECEIVE_COMMENTS,
  comments
});

export const receiveComment = (comment) => ({
  type: RECEIVE_COMMENT,
  comment
});

export const clearComments = () => ({
  type: CLEAR_COMMENTS
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

export const requestComments = (bookId) => dispatch => (
  CommentAPIUtil.fetchComments(bookId)
    .then(res => dispatch(receiveComments(res)))
    .fail(err => dispatch(receiveErrors(err.responseJSON)))
);

export const createComment = (bookId, comment) => dispatch => (
  CommentAPIUtil.createComment(bookId, comment)
  .then(res => dispatch(receiveComment(res)))
  .fail(err => dispatch(receiveErrors(err.responseJSON)))
);
