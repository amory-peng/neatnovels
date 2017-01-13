import { connect } from 'react-redux';
import BookshelfIndex from './bookshelf_index';
import { requestBookshelves,
         removeBookFromShelves } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ bookshelves }) => ({
  bookshelves
});

const mapDispatchToProps = dispatch => ({
  requestBookshelves: () => dispatch(requestBookshelves()),
  removeBookFromShelves: id => dispatch(removeBookFromShelves(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(BookshelfIndex);
