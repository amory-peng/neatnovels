import { connect } from 'react-redux';
import AddBookForm from './add_book_form';
import { requestBookshelves, addBookToShelf } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ bookshelves }, ownProps) => ({
  bookshelves,
  bookId: ownProps.bookId
});

const mapDispatchToProps = dispatch => ({
  requestBookshelves: () => dispatch(requestBookshelves()),
  addBookToShelf: (name, id) => dispatch(addBookToShelf(name, id))
});

export default connect(mapStateToProps, mapDispatchToProps)(AddBookForm);
