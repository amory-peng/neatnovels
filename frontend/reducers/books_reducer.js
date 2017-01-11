import { RECEIVE_BOOKS, RECEIVE_BOOK } from '../actions/book_actions';
import merge from 'lodash/merge';

const booksReducer = (state={}, action) => {
    Object.freeze(state);
    switch(action.type) {
      case RECEIVE_BOOKS:
        return merge({}, state, action.books);
      case RECEIVE_BOOK:
        return merge({}, state, { currentBook: action.book });
      default:
        return state;
    }
};
export default booksReducer;
