import React from 'react';
import BooksIndexItem from './books_index_item';
import { Link, hashHistory } from 'react-router';

class BooksIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { lastBookId: 0, hasMore: true };
    this.handleClick = this.handleClick.bind(this);
    this.handleScroll = this.handleScroll.bind(this);
  }

  componentWillMount() {
    if (this.props.books.length === 0) {
      this.props.requestBooks(0);
    }
    document.addEventListener('scroll', this.handleScroll);
  }

  componentWillReceiveProps(newProps) {
    const newLastBookId = newProps.books.length;
    let newHasMore = true;
    if (newLastBookId % 12 !== 0) {
      newHasMore = false;
    }
    this.setState( {lastBookId: newLastBookId, hasMore: newHasMore });
  }

  handleScroll() {
    if (document.body.scrollHeight - 200 <
        document.body.scrollTop + window.innerHeight &&
        this.state.hasMore === true ) {
        this.props.requestBooks(this.state.lastBookId);
    }
  }

  componentWillUnmount() {
    document.removeEventListener('scroll', this.handleScroll);
  }

  handleClick(id) {
    return () => {
      document.removeEventListener('scroll', this.handleScroll);
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

export default BooksIndex;
