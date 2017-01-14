import { RECEIVE_BOOK, REMOVE_CURRENT_BOOK } from '../actions/book_actions';

const bookDetailReducer = (state={}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_BOOK:
      return action.book;
    case REMOVE_CURRENT_BOOK:
      return {};
    default:
      return state;
  }
};

export default bookDetailReducer;
