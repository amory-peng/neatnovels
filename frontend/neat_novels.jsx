import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import * as SessionActions from './actions/session_actions';
import * as BookActions from './actions/book_actions';
import * as BookshelfActions from './actions/bookshelf_actions';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let preloadedState;
  if (window.currentUser) {
    preloadedState = { session: { currentUser: window.currentUser } };
  }
  const store = configureStore(preloadedState);
  window.store = store;
  window.requestBookshelves = BookshelfActions.requestBookshelves;
  ReactDOM.render(<Root store={ store }/>, root);
});

//TODO remove actions when done lel
