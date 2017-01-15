import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';
import BookshelfDetailItem from './bookshelf_detail_item';
import AddBookshelfForm from './add_bookshelf_form_container';

class BookshelfIndex extends React.Component{
  constructor(props) {
    super(props);
    this.removeBookFromShelves = this.removeBookFromShelves.bind(this);
  }

  componentWillMount() {
    this.props.requestBookshelves();
  }

  removeBookFromShelves(bookId) {
    return () => this.props.removeBookFromShelves(bookId);
  }

  allBooks() {
    //sorry for how ugly this is :(
    let allBooks = {};
    const bookshelves = this.props.bookshelves;
    if (bookshelves) {
      Object.keys(bookshelves).forEach(shelfId => {
        if (bookshelves[shelfId].books) {
          Object.keys(bookshelves[shelfId].books).forEach( bookId => {
            const currentBook = bookshelves[shelfId].books[bookId];
            if (!allBooks[bookId]) {
            }
            allBooks[bookId] = currentBook;
          });
        }
      });
    }
    return allBooks;
  }

  renderBookList() {
    const allBooks = this.allBooks();
    let count = 0;
    const allBooksList = Object.keys(allBooks).map((bookId, idx) => {
      count++;
      return (
        <li key={idx}>
          <BookshelfDetailItem book={allBooks[bookId]} />
          <button onClick={this.removeBookFromShelves(bookId)}
            className="button">X</button>
        </li>
      );
    });

  if (this.props.children) {
    return this.props.children;
  } else {
    return (
      <div className="bookshelf-detail-container">
        <h1>All</h1>
        <ul>
          {allBooksList}
        </ul>
      </div>
    );
  }

  }

  render() {

    if (!this.props.bookshelves || Object.keys(this.props.bookshelves).length === 0) {
      return <div></div>;
    } else {
      let totalCount = 0;
      let bookshelvesList = Object.keys(this.props.bookshelves)
      .map((shelf, idx) => {
        let currentShelf = this.props.bookshelves[shelf];
        let bookCount = 0;
        if (currentShelf.books) {
          Object.keys(currentShelf.books).forEach( _ => {
            bookCount += 1;
            totalCount += 1;
          });
        }
        return (
          <li key={idx}>
            <Link  className="link" to={`/bookshelves/${currentShelf.id}`}>
              {currentShelf.name} ({bookCount})
            </Link>

          </li>
        );
      });

      return(
        <div className="bookshelves-main-container">
          <div className="bookshelves-index-container">
            <h2>Bookshelves</h2>
            <ul className="bookshelves-index">
              <li>
                <Link to='/bookshelves' className='link'>All ({totalCount})</Link>
              </li>
              {bookshelvesList}
            </ul>
          <AddBookshelfForm />
          </div>
            { this.renderBookList() }
        </div>
      );
    }
  }
}

export default withRouter(BookshelfIndex);
