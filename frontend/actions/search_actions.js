import * as BookAPIUtil from '../util/book_api_util';

export const RECEIVE_QUERIED_BOOKS = 'RECEIVE_QUERIED_BOOKS';
export const CLEAR_QUERIED_BOOKS = 'CLEAR_QUERIED_BOOKS';
export const QUERYING = 'QUERYING';

export const receiveQueriedBooks = books => ({
  type: RECEIVE_QUERIED_BOOKS,
  books
});

export const clearQueriedBooks = () => ({
  type: CLEAR_QUERIED_BOOKS,
});

export const querying = () => ({
  type: QUERYING,
});

export const searchBooks = query => dispatch => {
  dispatch(querying());
  return (
    BookAPIUtil.searchBooks(query)
    .then(res => dispatch(receiveQueriedBooks(res)))
  );
};
