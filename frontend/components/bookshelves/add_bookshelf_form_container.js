import { connect } from 'react-redux';
import AddBookshelfForm from './add_bookshelf_form';
import { createBookshelf, clearBookshelfErrors } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ bookshelves }) => ({
  errors: bookshelves.errors
});

const mapDispatchToProps = dispatch => ({
  createBookshelf: shelf => dispatch(createBookshelf(shelf)),
  clearBookshelfErrors: () => dispatch(clearBookshelfErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(AddBookshelfForm);
