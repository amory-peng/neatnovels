import { RECEIVE_BOOKSHELVES, RECEIVE_BOOKSHELF,
    REMOVE_BOOKSHELF, REMOVE_BOOKSHELVES } from '../actions/bookshelf_actions';
import merge from 'lodash/merge';
import { assign } from 'lodash';

const _defaultState = {};

const BookshelvesReducer = (state=_defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_BOOKSHELVES:
      return action.shelves;

    case REMOVE_BOOKSHELVES:
      return _defaultState;

    case RECEIVE_BOOKSHELF:
      let updatedState = assign({}, state, {[action.shelf.id]: action.shelf });
      return updatedState;

    case REMOVE_BOOKSHELF:
      let newState = merge({}, state);
      delete newState[action.id];
      return newState;

    default:
      return state;
  }
};

export default BookshelvesReducer;
