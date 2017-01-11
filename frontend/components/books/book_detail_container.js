import { connect } from 'react-redux';
import { requestBook } from '../../actions/book_actions';
import BookDetail from './book_detail';

const mapStateToProps = ({ currentBook }, ownProps) => {
  return ({
  currentBook,
  bookId: ownProps.params.bookId
});
};

const mapDispatchToProps = dispatch => ({
  requestBook: id => dispatch(requestBook(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(BookDetail);
