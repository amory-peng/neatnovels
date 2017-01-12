import { RECEIVE_BOOKSHELVES, RECEIVE_BOOKSHELF, REMOVE_BOOKSHELF } from '../actions/bookshelf_actions';
import merge from 'lodash/merge';

const _defaultState = {};

const BookshelvesReducer = (state=_defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_BOOKSHELVES:
      return merge({}, state, action.shelves );

    case RECEIVE_BOOKSHELF:
      return merge({}, state, { [action.shelf.id]: action.shelf });

    case REMOVE_BOOKSHELF:
      let newState = merge({}, state);
      delete newState[action.id];
      return newState;

    default:
      return state;
  }
};

export default BookshelvesReducer;
