import { connect } from 'react-redux';
import BookshelfDetail from './bookshelf_detail';
import { requestCurrentBookshelf, updateBookshelf, deleteBookshelf,
  removeBookFromShelf, removeCurrentBookshelf } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ currentBookshelf }, ownProps) => ({
  currentBookshelf: currentBookshelf,
  bookshelfId: ownProps.params.bookshelfId
});

const mapDispatchToProps = dispatch => ({
  requestCurrentBookshelf: (id) => dispatch(requestCurrentBookshelf(id)),
  updateBookshelf: (shelf) => dispatch(updateBookshelf(shelf)),
  deleteBookshelf: (shelf) => dispatch(deleteBookshelf(shelf)),
  removeBookFromShelf: (shelfId, bookId) => dispatch(removeBookFromShelf(shelfId, bookId)),
  removeCurrentBookshelf: () => dispatch(removeCurrentBookshelf())
});

export default connect(mapStateToProps, mapDispatchToProps)(BookshelfDetail);
