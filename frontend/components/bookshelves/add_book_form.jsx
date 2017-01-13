import React from 'react';
import { hashHistory } from 'react-router';
import { isEmpty } from 'lodash';

class AddBookForm extends React.Component {
  constructor(props) {
    super(props);

  }

  componentWillMount() {
    this.props.requestBookshelves();
  }



  render() {
    let bookshelfList;
    if (this.props.bookshelves) {
      bookshelfList = Object.keys(this.props.bookshelves).map( (id) => {
        const currentShelf = this.props.bookshelves[id];
        let sym = "💔";
        let handleClick = ()=> () => this.props.addBookToShelf(id, this.props.bookId);
        if (currentShelf.books) {
          Object.keys(currentShelf.books).forEach( bookId => {
            if (this.props.bookId === bookId) {
              sym = "❤️";
              handleClick = () => () => this.props.removeBookFromShelf(id, this.props.bookId);
            }
          });
        }

        return(
          <li key={id} value={id} onClick={handleClick()}>
            <div className="heart">{sym}</div>{this.props.bookshelves[id].name}
          </li>
          );
        }
      );
    }

    return(
      <div>
        <div className="add-to-shelf-container">
          <h3>Add to shelf...</h3>
          <ul>
            { bookshelfList }
          </ul>
        </div>

      </div>
    );
  }
}

export default AddBookForm;
