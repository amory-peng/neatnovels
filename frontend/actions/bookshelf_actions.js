import * as BookshelfAPIUtil from '../util/bookshelf_util';

export const RECEIVE_BOOKSHELVES = 'RECEIVE_BOOKSHELVES';
export const RECEIVE_BOOKSHELF = 'RECEIVE_BOOKSHELF';
export const REMOVE_BOOKSHELF = 'REMOVE_BOOKSHELF';

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

export const requestBookshelves = () => dispatch => (
  BookshelfAPIUtil.requestBookshelves().then(res => dispatch(receiveBookshelves(res)))
);

export const requestBookshelf = id => dispatch => (
  BookshelfAPIUtil.requestBookshelf(id).then(res => dispatch(receiveBookshelf(res)))
);

export const deleteBookshelf = id => dispatch => (
  BookshelfAPIUtil.deleteBookshelf(id).then(res => dispatch(removeBookshelf(res)))
);
