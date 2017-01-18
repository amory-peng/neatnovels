import React from 'react';
import { Provider } from 'react-redux';
import {Router, hashHistory, Route, IndexRoute } from 'react-router';
import App from './app';
import SessionForm from './session_form/session_form_container';
import BooksIndex from './books/books_index_container';
import BookDetail from './books/book_detail_container';
import BookshelfIndex from './bookshelves/bookshelf_index_container';
import BookshelfDetail from './bookshelves/bookshelf_detail_container';
import SearchIndex from './search/search_index_container';

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
        <IndexRoute component= { BooksIndex } />
        <Route path="login" component={ SessionForm } onEnter={_redirectIfLoggedIn} />
        <Route path="signup" component={ SessionForm } onEnter={_redirectIfLoggedIn}/>
        <Route path="books" component={ BooksIndex } />
        <Route path="books/search/*" component= { SearchIndex } />
          <Route path="books/:bookId" component={ BookDetail } />
        <Route path="bookshelves" component= { BookshelfIndex } onEnter={_ensureLoggedIn}>
          <Route path=":bookshelfId" component={ BookshelfDetail } onEnter={_ensureLoggedIn} />
        </Route>
      </Route>
    </Router>
  </Provider>
);

export default Root;
