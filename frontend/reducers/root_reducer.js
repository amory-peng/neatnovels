import { combineReducers } from 'redux';
import sessionReducer from './session_reducer';
import booksReducer from './books_reducer';

export default combineReducers({
  session: sessionReducer,
  books: booksReducer,
});
