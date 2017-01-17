import { RECEIVE_BOOKS,
         RECEIVE_QUERIED_BOOKS,
         CLEAR_BOOKS } from '../actions/book_actions';
import merge from 'lodash/merge';

const _defaultState = {
  books: {},
  queriedBooks: {},
  errors: []
};

const booksReducer = (state=_defaultState, action) => {
    let newState = merge({}, state);
    switch(action.type) {
      case RECEIVE_BOOKS:
        newState.books = merge(newState.books, action.books);
        return newState;

      case RECEIVE_QUERIED_BOOKS:
        newState.books = action.books;
        return newState;

      case CLEAR_BOOKS:
        newState.books = {};
        return newState;
      default:
        return state;
    }
};
export default booksReducer;
