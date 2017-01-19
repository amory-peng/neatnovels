import * as BookAPIUtil from '../util/book_api_util';

export const RECEIVE_QUERIED_BOOKS = 'RECEIVE_QUERIED_BOOKS';
export const CLEAR_QUERIED_BOOKS = 'CLEAR_QUERIED_BOOKS';

export const receiveQueriedBooks = books => ({
  type: RECEIVE_QUERIED_BOOKS,
  books
});

export const clearQueriedBooks = () => ({
  type: CLEAR_QUERIED_BOOKS,
});


export const searchBooks = query => dispatch => {
  return (
    BookAPIUtil.searchBooks(query).then(res => dispatch(receiveQueriedBooks(res)))
  );
};
