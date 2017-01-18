import { RECEIVE_QUERIED_BOOKS,
         RECEIVE_QUERY,
         CLEAR_QUERIED_BOOKS } from '../actions/search_actions';
import merge from 'lodash/merge';

const _defaultState = {
  queriedBooks: {},
  query: ""
};

const SearchReducer = (state = _defaultState, action) => {
  let newState = merge({}, state);
  switch(action.type) {
    case RECEIVE_QUERIED_BOOKS:
      newState.queriedBooks = action.books;
      return newState;

    case CLEAR_QUERIED_BOOKS:
      newState.queriedBooks = {};
      return newState;

    case RECEIVE_QUERY:
      newState.query = action.query;
      return newState;

    default:
      return newState;
  }
};

export default SearchReducer;
