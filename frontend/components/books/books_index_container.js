import { connect } from 'react-redux';
import BooksIndex from './books_index';
import { requestBooks } from '../../actions/book_actions';

const mapStateToProps = ({ books }) => {
  const bookIds = Object.keys(books).sort((a,b) => a - b);
  const bookList = bookIds.map( id => books[id]);
  return ({ books: bookList });
};

const mapDispatchToProps = (dispatch) => ({
  requestBooks: (lastId) => dispatch(requestBooks(lastId)),
});

export default connect(mapStateToProps, mapDispatchToProps)(BooksIndex);
