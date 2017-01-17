import { connect } from 'react-redux';
import BookshelfIndex from './bookshelf_index';
import { requestBookshelves,
         removeBookshelves,
         removeBookFromShelves } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ bookshelves }) => ({
  bookshelves: bookshelves.bookshelves
});

const mapDispatchToProps = dispatch => ({
  requestBookshelves: () => dispatch(requestBookshelves()),
  removeBookshelves: () => dispatch(removeBookshelves()),
  removeBookFromShelves: id => dispatch(removeBookFromShelves(id)),
});

export default connect(mapStateToProps, mapDispatchToProps)(BookshelfIndex);
