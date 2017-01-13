import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';
import BookshelfDetailItem from './bookshelf_detail_item';

class BookshelfIndex extends React.Component{
  constructor(props) {
    super(props);
    this.state = { name: "" };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.removeBookFromShelves = this.removeBookFromShelves.bind(this);
  }

  componentDidMount() {
    this.props.requestBookshelves();
  }

  handleChange(e) {
    this.setState({ name: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    let newShelf = merge({}, this.state);
    this.setState({ name: "" }, () => this.props.createBookshelf(newShelf));
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
    const allBooksList = Object.keys(allBooks).map((bookId, idx) => {
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

    if (!this.props.bookshelves) {
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
            <form className="add-form-container" onSubmit={this.handleSubmit}>
              <input type="text" onChange={this.handleChange} placeholder="Add a bookshelf!"
                value={this.state.name}/>
              <button className="button">Add shelf</button>

            </form>
          </div>
            { this.renderBookList() }
        </div>
      );
    }
  }
}

export default withRouter(BookshelfIndex);
