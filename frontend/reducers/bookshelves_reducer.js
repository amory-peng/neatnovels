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

    case RECEIVE_BOOKSHELF:
      console.log(state, {[action.shelf.id]: action.shelf});
      let updatedState = assign({}, state, {[action.shelf.id]: action.shelf });
      console.log(updatedState);
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
