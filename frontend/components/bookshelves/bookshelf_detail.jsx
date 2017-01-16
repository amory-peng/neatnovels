import React from 'react';
import BookshelfDetailItem from './bookshelf_detail_item';
import { hashHistory } from 'react-router';

class BookshelfDetail extends React.Component{
  constructor(props) {
    super(props);
    this.deleteShelf = this.deleteShelf.bind(this);
    this.removeBookFromShelf = this.removeBookFromShelf.bind(this);
  }

  componentWillMount() {
    this.props.requestCurrentBookshelf(this.props.bookshelfId);
  }

  componentWillUnmount() {
    this.props.removeCurrentBookshelf();
  }

  componentWillReceiveProps(newProps) {
    if (this.props.params.bookshelfId !== newProps.params.bookshelfId) {
      this.props.requestCurrentBookshelf(newProps.params.bookshelfId);
    }
  }

  deleteShelf() {
    this.props.deleteBookshelf(this.props.currentBookshelf.id);
    hashHistory.push('/bookshelves');
  }

  removeBookFromShelf(bookId) {
    return () =>
    this.props.removeBookFromShelf(this.props.currentBookshelf.id, bookId);
  }

  render() {
    let bookList = false;
    if (this.props.currentBookshelf.books) {
      bookList = Object.keys(this.props.currentBookshelf.books).map((bookId, idx) =>
        <li key={idx}>
          <BookshelfDetailItem book={this.props.currentBookshelf.books[bookId]} />
          <button onClick={this.removeBookFromShelf(bookId)}
                  className="button">X</button>
        </li>
      );
    }

    if (!bookList) {
      bookList = <li>No books yet!</li>;
    }
    if (Object.keys(this.props.currentBookshelf).length > 0) {
      let deleteButton;
      if (!this.props.currentBookshelf.protect) {
        deleteButton = <button className="button" onClick={this.deleteShelf}>Delete shelf</button>
      }
      return(
        <div className="bookshelf-detail-container">
          <h1>{ this.props.currentBookshelf.name }</h1>
          <ul>
            { bookList }
          </ul>
          {deleteButton}
        </div>
      );
    } else {
      return <div></div>;
    }
  }
}

export default BookshelfDetail;
