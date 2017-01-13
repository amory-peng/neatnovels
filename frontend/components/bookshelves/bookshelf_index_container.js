import { connect } from 'react-redux';
import BookshelfIndex from './bookshelf_index';
import { requestBookshelves, createBookshelf } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ bookshelves }) => ({
  bookshelves
});

const mapDispatchToProps = dispatch => ({
  requestBookshelves: () => dispatch(requestBookshelves()),
  createBookshelf: shelf => dispatch(createBookshelf(shelf)),

});

export default connect(mapStateToProps, mapDispatchToProps)(BookshelfIndex);
