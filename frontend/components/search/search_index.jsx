import React from 'react';
import BooksIndexItem from '../books/books_index_item';
import { Link, hashHistory } from 'react-router';
import debounce from 'lodash/debounce';

class SearchIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { query: "" };
    this.loading = true;
    this.handleClick = this.handleClick.bind(this);
    this.searchBooks = debounce(this.props.searchBooks, 500);
  }

  componentWillMount() {
    const query = this.props.location.pathname.slice(14);
    this.setState({ query }, () => {
      this.props.clearQueriedBooks();
      this.searchBooks(query);
    });
  }

  componentWillReceiveProps(newProps) {
    const newQuery = newProps.location.pathname.slice(14);
    // console.log(this.state, newQuery);
    // //new query comes in, search sent by search bar
    console.log(newProps, this.loading);
    if (newQuery !== this.state.query) {
      this.loading = true;
    } else   // } else if (this.state.loading && this.state.query === newQuery) {
    //   this.setState({loading: false});
    // }
    if (this.state.query === newQuery) {
      this.loading = false;
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
    } else if (this.loading) {
      bookList = <h1>Searching...</h1>;
    } else {
      bookList = <h1>Nothing found!</h1>;
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
