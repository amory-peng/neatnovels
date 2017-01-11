import React from 'react';
import { Provider } from 'react-redux';
import {Router, hashHistory, Route, IndexRoute } from 'react-router';
import App from './app';
import SessionForm from './session_form/session_form_container';
import BooksIndex from './books/books_index_container';

const _redirectIfLoggedIn = () => {
  const currentUser = store.getState().session.currentUser;
  if (currentUser) {
    hashHistory.replace('/books');
  }
};

const _ensureLoggedIn = () => {
  const currentUser = store.getState().session.currentUser;
  if (!currentUser) {
    hashHistory.replace('/login');
  }
};

const Root = ({ store }) => (
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App }>
        <Route path="/login" component={ SessionForm } onEnter={_redirectIfLoggedIn} />
        <Route path="/signup" component={ SessionForm } onEnter={_redirectIfLoggedIn}/>
        <Route path="/books" component={ BooksIndex } onEnter={_ensureLoggedIn} />
      </Route>
    </Router>
  </Provider>
);

export default Root;
