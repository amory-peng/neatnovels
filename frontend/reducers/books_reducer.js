import { RECEIVE_BOOKS, RECEIVE_BOOK } from '../actions/book_actions';
import merge from 'lodash/merge';

const booksReducer = (state={}, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
      case RECEIVE_BOOKS:
        console.log(action.books);
        return merge({}, state, action.books);

      // case RECEIVE_BOOK:
      //   newState = merge({}, state, { currentBook: action.book });
      //   console.log(newState);
      //   return merge({}, state, { currentBook: action.book });

      default:
        return state;
    }
};
export default booksReducer;
