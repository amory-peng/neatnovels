import { connect } from 'react-redux';
import BooksIndex from './books_index';
import { requestBooks,
         clearBooks } from '../../actions/book_actions';

const mapStateToProps = ({ books }, ownProps) => {
  const bookIds = Object.keys(books.books).sort((a,b) => a - b);
  const bookList = bookIds.map( id => books.books[id]);
  return ({ books: bookList, location: ownProps.location });
};

const mapDispatchToProps = (dispatch) => ({
  requestBooks: (lastId) => dispatch(requestBooks(lastId)),
  clearBooks: () => dispatch(clearBooks())
});

export default connect(mapStateToProps, mapDispatchToProps)(BooksIndex);
