import { connect } from 'react-redux';
import BookshelfIndex from './bookshelf_index';
import { requestBookshelves } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ bookshelves }) => ({
  bookshelves: bookshelves.bookshelves
});

const mapDispatchToProps = dispatch => ({
  requestBookshelves: () => dispatch(requestBookshelves()),
});

export default connect(mapStateToProps, mapDispatchToProps)(BookshelfIndex);
