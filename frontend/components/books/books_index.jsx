import React from 'react';
import BooksIndexItem from './books_index_item';
import { Link, hashHistory } from 'react-router';

class BooksIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { lastBookId:0 };
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {
    this.props.requestBooks();
    document.addEventListener('scroll', this.handleScroll);
  }

  handleScroll() {
    console.log("scroll");
  }

  handleClick(id) {
    return () => hashHistory.push(`/books/${id}`);
  }

  render() {
    let bookList;
    // console.log(this.props.books);
    if (this.props.books) {
      bookList = this.props.books.map( (book,idx) => (
        <li key={idx} onClick={this.handleClick(book.id)}><BooksIndexItem book={book} /></li>
      ));
    }
    return (
      <div className="books-main-container">
        <ul className="books-index-container">
          { bookList }
        </ul>
      </div>
    );
  }

}

export default BooksIndex;
