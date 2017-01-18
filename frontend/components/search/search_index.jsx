import React from 'react';
import BooksIndexItem from '../books/books_index_item';
import { Link, hashHistory } from 'react-router';
import debounce from 'lodash/debounce';

class SearchIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { loading: true };
    this.handleClick = this.handleClick.bind(this);
    this.searchBooks = this.props.searchBooks;
  }

  componentWillMount() {
    this.props.clearQueriedBooks();
    const query = this.props.location.pathname.slice(14);
    this.searchBooks(query);
    this.props.receiveQuery(query);
  }

  componentWillReceiveProps(newProps) {
    const query = newProps.location.pathname.slice(14);
    if (query !== this.props.query) {
      this.searchBooks(query);
      this.props.receiveQuery(query);
    }
  }

  handleClick(id) {
    return () => {
      hashHistory.push(`/books/${id}`);
    };
  }

  render() {
    let bookList;
    if (this.props.books.length > 0) {
      bookList = this.props.books.map( (book,idx) => (
        <li key={idx} onClick={this.handleClick(book.id)}>
          <BooksIndexItem book={book} />
        </li>
      ));
    }

    return (
      <div className = "wrapper">
        <div className="books-main-container">
          <ul className="books-index-container">
            { bookList }
          </ul>
        </div>
      </div>
    );
  }

}

export default SearchIndex;
