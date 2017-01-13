import * as BookshelfAPIUtil from '../util/bookshelf_util';
import * as ShelvingAPIUtil from '../util/shelving_api_util';

export const RECEIVE_BOOKSHELVES = 'RECEIVE_BOOKSHELVES';
export const RECEIVE_BOOKSHELF = 'RECEIVE_BOOKSHELF';
export const REMOVE_BOOKSHELF = 'REMOVE_BOOKSHELF';
export const REMOVE_BOOKSHELVES = 'REMOVE_BOOKSHELVES';

export const RECEIVE_CURRENT_BOOKSHELF = 'RECEIVE_CURRENT_BOOKSHELF';
export const REMOVE_CURRENT_BOOKSHELF = 'REMOVE_CURRENT_BOOKSHELF';

//POJOs
export const receiveBookshelves = shelves => ({
  type: RECEIVE_BOOKSHELVES,
  shelves
});

export const receiveBookshelf = shelf => ({
  type: RECEIVE_BOOKSHELF,
  shelf
});

export const removeBookshelf = id => ({
  type: REMOVE_BOOKSHELF,
  id
});

export const receiveCurrentBookshelf = shelf => ({
  type: RECEIVE_CURRENT_BOOKSHELF,
  shelf
});

export const removeCurrentBookshelf = () => ({
  type: REMOVE_CURRENT_BOOKSHELF,
});

export const removeBookshelves = () => ({
  type: REMOVE_BOOKSHELVES
});

export const createBookshelf = shelf => dispatch => (
  BookshelfAPIUtil.createBookshelf(shelf).then(res => dispatch(receiveBookshelf(res)))
);

export const requestCurrentBookshelf = id => dispatch => (
  BookshelfAPIUtil.requestBookshelf(id).then(res => dispatch(receiveCurrentBookshelf(res)))
);

export const requestBookshelves = () => dispatch => (
  BookshelfAPIUtil.requestBookshelves().then(res => dispatch(receiveBookshelves(res)))
);

export const requestBookshelf = id => dispatch => (
  BookshelfAPIUtil.requestBookshelf(id).then(res => dispatch(receiveBookshelf(res)))
);

export const deleteBookshelf = id => dispatch => (
  BookshelfAPIUtil.deleteBookshelf(id)
  .then(res => dispatch(removeBookshelf(res.id)))
  .then(() => dispatch(removeCurrentBookshelf()))
);

export const addBookToShelf = (bookshelfId, bookId) => dispatch => (
  ShelvingAPIUtil.createShelving(bookshelfId, bookId)
    .then(() => dispatch(requestBookshelves()))
);

export const removeBookFromShelf = (bookshelfId, bookId) => dispatch => (
  ShelvingAPIUtil.deleteShelving(bookshelfId, bookId)
    .then(() => dispatch(requestBookshelf(bookshelfId)))
    .then(() => dispatch(requestCurrentBookshelf(bookshelfId)))
);

export const removeBookFromShelves = bookId => dispatch => (
  ShelvingAPIUtil.deleteShelvings(bookId)
    .then(() => dispatch(requestBookshelves()))
);
