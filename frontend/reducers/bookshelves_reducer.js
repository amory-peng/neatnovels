import { RECEIVE_BOOKSHELVES,
         RECEIVE_BOOKSHELF,
         REMOVE_BOOKSHELF,
         REMOVE_BOOKSHELVES,
         RECEIVE_BOOKSHELF_ERRORS,
         CLEAR_BOOKSHELF_ERRORS } from '../actions/bookshelf_actions';
import merge from 'lodash/merge';
import { assign } from 'lodash';

const _defaultState = {
  bookshelves: {},
  errors: []
};

const BookshelvesReducer = (state=_defaultState, action) => {
  let newState = merge({}, state);
  switch (action.type) {
    case RECEIVE_BOOKSHELVES:
      newState.bookshelves = action.shelves;
      return newState;

    case REMOVE_BOOKSHELVES:
      return _defaultState;

    case RECEIVE_BOOKSHELF:
      newState.bookshelves = assign(newState.bookshelves, {[action.shelf.id]: action.shelf });
      return newState;

    case REMOVE_BOOKSHELF:
      delete newState.bookshelves[action.id];
      return newState;

    case RECEIVE_BOOKSHELF_ERRORS:
      newState.errors = action.errors;
      return newState;

    case CLEAR_BOOKSHELF_ERRORS:
      newState.errors = [];
      return newState;

    default:
      return state;
  }
};

export default BookshelvesReducer;
