import { RECEIVE_BOOK } from '../actions/book_actions';

const bookDetailReducer = (state={}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_BOOK:
      return action.book;
    default:
      return state;
  }
};

export default bookDetailReducer;
