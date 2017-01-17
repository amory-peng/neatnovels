import { connect } from 'react-redux';
import AddBookForm from './add_book_form';
import { requestBookshelves,
         addBookToShelf,
         removeBookFromShelf } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ bookshelves }, ownProps) => ({
  bookshelves: bookshelves.bookshelves,
  bookId: ownProps.bookId
});

const mapDispatchToProps = dispatch => ({
  requestBookshelves: () => dispatch(requestBookshelves()),
  addBookToShelf: (name, id) => dispatch(addBookToShelf(name, id)),
  removeBookFromShelf: (shelfId, bookId) => dispatch(removeBookFromShelf(shelfId, bookId))
});

export default connect(mapStateToProps, mapDispatchToProps)(AddBookForm);
