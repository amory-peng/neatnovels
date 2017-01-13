import { connect } from 'react-redux';
import AddBookshelfForm from './add_bookshelf_form';
import { createBookshelf } from '../../actions/bookshelf_actions';

const mapStateToProps = () => ({

});

const mapDispatchToProps = dispatch => ({
  createBookshelf: shelf => dispatch(createBookshelf(shelf)),
});

export default connect(mapStateToProps, mapDispatchToProps)(AddBookshelfForm);
