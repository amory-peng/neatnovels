import * as BookAPIUtil from '../util/book_api_util';


export const RECEIVE_BOOKS = 'RECEIVE_BOOKS';
export const RECEIVE_BOOK = 'RECEIVE_BOOK';

//POJOs
export const receiveBooks = books => ({
  type: RECEIVE_BOOKS,
  books
});

export const receiveBook = book => ({
  type: RECEIVE_BOOK,
  book
});

//thunks
export const requestBooks = lastId => dispatch => (
  BookAPIUtil.fetchBooks(lastId)
    .then(res => dispatch(receiveBooks(res)))
);

export const requestBook = id => dispatch => (
  BookAPIUtil.fetchBook(id).then(res => dispatch(receiveBook(res)))
);
