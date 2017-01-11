import React from 'react';
import BooksIndexItem from './books_index_item';
import { Link, hashHistory } from 'react-router';

class BooksIndex extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {
    this.props.requestBooks();
  }

  handleClick() {
    console.log("click!");
  }

  render() {
    let bookList;
    console.log(this.props.books);
    if (this.props.books) {
      bookList = this.props.books.map( (book,idx) => (
        <li key={idx} onClick={this.handleClick}><BooksIndexItem book={book} /></li>
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
