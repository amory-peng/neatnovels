import * as BookAPIUtil from '../util/book_api_util';

export const RECEIVE_BOOKS = 'RECEIVE_BOOKS';
export const RECEIVE_BOOK = 'RECEIVE_BOOK';
export const REMOVE_CURRENT_BOOK = 'REMOVE_CURRENT_BOOK';
export const CLEAR_BOOKS = 'CLEAR_BOOKS';

//POJOs
export const receiveBooks = books => ({
  type: RECEIVE_BOOKS,
  books
});

export const receiveBook = book => ({
  type: RECEIVE_BOOK,
  book
});

export const removeCurrentBook = () => ({
  type: REMOVE_CURRENT_BOOK
});


export const clearBooks = () => ({
  type: CLEAR_BOOKS
});

//thunks
export const requestBooks = lastId => dispatch => (
  BookAPIUtil.fetchBooks(lastId)
    .then(res => dispatch(receiveBooks(res)))
);

export const requestBook = id => dispatch => (
  BookAPIUtil.fetchBook(id).then(res => dispatch(receiveBook(res)))
);
