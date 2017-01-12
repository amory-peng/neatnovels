import { combineReducers } from 'redux';
import sessionReducer from './session_reducer';
import booksReducer from './books_reducer';
import bookDetailReducer from './book_detail_reducer';
import bookshelvesReducer from './bookshelves_reducer';
import bookshelfDetailReducer from './bookshelf_detail_reducer';

export default combineReducers({
  session: sessionReducer,
  books: booksReducer,
  currentBook: bookDetailReducer,
  bookshelves: bookshelvesReducer,
  currentBookshelf: bookshelfDetailReducer
});
