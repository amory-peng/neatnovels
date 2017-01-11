import { connect } from 'react-redux';
import BooksIndex from './books_index';
import { requestBooks } from '../../actions/book_actions';

const mapStateToProps = ({ books }) => {
  const bookList = Object.keys(books).map((bookId) => (books[bookId]));
  return ({ books: bookList });
};

const mapDispatchToProps = (dispatch) => ({
  requestBooks: () => dispatch(requestBooks()),
});

export default connect(mapStateToProps, mapDispatchToProps)(BooksIndex);
