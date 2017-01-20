import React from 'react';
import BooksIndexItem from '../books/books_index_item';
import { Link, hashHistory } from 'react-router';
import debounce from 'lodash/debounce';

class SearchIndex extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  componentWillMount() {
    const query = this.props.location.pathname.slice(14);
    this.props.clearQueriedBooks();
    this.props.searchBooks(query);
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
    } else if (this.props.querying) {
      bookList = <h1 className="search-index-text"></h1>;
    } else {
      bookList = <h1 className="search-index-text">Nothing found!</h1>;
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
