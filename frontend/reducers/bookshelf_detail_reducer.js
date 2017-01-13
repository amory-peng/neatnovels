import { RECEIVE_CURRENT_BOOKSHELF, REMOVE_CURRENT_BOOKSHELF } from '../actions/bookshelf_actions';

const _defaultState = {};

const BookshelfDetailReducer = (state=_defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CURRENT_BOOKSHELF:
      return action.shelf;

    case REMOVE_CURRENT_BOOKSHELF:
      console.log("hit here");
      return _defaultState;

    default:
      return state;
  }
};

export default BookshelfDetailReducer;
