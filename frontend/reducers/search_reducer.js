import { RECEIVE_QUERIED_BOOKS,
         CLEAR_QUERIED_BOOKS,
         QUERYING } from '../actions/search_actions';
import merge from 'lodash/merge';

const _defaultState = {
  queriedBooks: {},
  querying: true
};

const SearchReducer = (state = _defaultState, action) => {
  let newState = merge({}, state);
  switch(action.type) {
    case RECEIVE_QUERIED_BOOKS:
      newState.queriedBooks = action.books;
      newState.querying = false;
      return newState;

    case CLEAR_QUERIED_BOOKS:
      newState.queriedBooks = {};
      newState.querying = true;
      return newState;

    case QUERYING:
      newState.querying = true;
      return newState;

    default:
      return newState;
  }
};

export default SearchReducer;
