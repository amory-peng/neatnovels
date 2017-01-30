import React from 'react';
import { hashHistory, Link } from 'react-router';
import { isEmpty } from 'lodash';
import AddBookFormItem from './add_book_form_item';

class AddBookForm extends React.Component {
  constructor(props) {
    super(props);

  }

  componentWillMount() {
    if (this.props.currentUser) {
      this.props.requestBookshelves();
    }
  }

  bookshelfList() {
    let bookshelfList;
    if (this.props.bookshelves) {
      bookshelfList = Object.keys(this.props.bookshelves).map( (id) => {
        const currentShelf = this.props.bookshelves[id];
        let sym = "__";
        let handleClick = this.props.addBookToShelf;
        if (currentShelf.books) {
          Object.keys(currentShelf.books).forEach( bookId => {
            if (this.props.bookId === bookId) {
              sym = "➕";
              handleClick = this.props.removeBookFromShelf;
            }
          });
        }

        return(
          <li key={id} value={id}>
            <AddBookFormItem shelf={currentShelf} sym={sym} bookId={this.props.bookId} handleClick={handleClick}/>
          </li>
          );
        }
      );
    }
    return bookshelfList;
  }


  render() {
    let bookshelfList;
    if (this.props.currentUser) {
      bookshelfList = this.bookshelfList();
    } else {
      bookshelfList =
        <li key={0}>
          <Link to="/login">
          <div className="abf-item">
              Login to add to shelf!
          </div>
        </Link>
      </li>;
    }
    return(
      <div className="add-to-shelf-container">
        <h3 className="add-to-shelf-label">
          &#9660;&nbsp;&nbsp;&nbsp;Add to shelf...
        </h3>
        <ul>
          { bookshelfList }
        </ul>
      </div>


    );
  }
}

export default AddBookForm;
